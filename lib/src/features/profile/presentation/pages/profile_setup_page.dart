import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/router/app_router.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/presentation/widgets/custom_text_field.dart';
import '../../application/profile_bloc/profile_bloc.dart';

class ProfileSetupPageView extends StatefulWidget {
  final bool isEditing;

  const ProfileSetupPageView({super.key, this.isEditing = false});

  @override
  State<ProfileSetupPageView> createState() => _ProfileSetupPageViewState();
}

class _ProfileSetupPageViewState extends State<ProfileSetupPageView> {
  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _skillController = TextEditingController();
  final List<String> _selectedSkills = [];
  bool _prefilled = false;

  @override
  void initState() {
    super.initState();
    // Load existing profile so fields are pre-filled on revisit
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _locationController.dispose();
    _skillController.dispose();
    super.dispose();
  }

  // Called once when the bloc emits a loaded profile so we pre-fill the fields
  void _prefillFromState(ProfileState state) {
    if (_prefilled) return;
    if (state.name.isNotEmpty) _nameController.text = state.name;
    if (state.location.isNotEmpty) _locationController.text = state.location;
    if (state.skills.isNotEmpty) {
      setState(() => _selectedSkills
        ..clear()
        ..addAll(state.skills));
    }
    _prefilled = true;
  }

  void _addSkill() {
    final skill = _skillController.text.trim();
    if (skill.isNotEmpty && !_selectedSkills.contains(skill)) {
      setState(() {
        _selectedSkills.add(skill);
        _skillController.clear();
      });
      context.read<ProfileBloc>().add(ProfileEvent.skillsChanged(_selectedSkills));
    }
  }

  void _removeSkill(String skill) {
    setState(() => _selectedSkills.remove(skill));
    context.read<ProfileBloc>().add(ProfileEvent.skillsChanged(_selectedSkills));
  }

  void _handleSubmit() {
    final name = _nameController.text.trim();
    final location = _locationController.text.trim();

    if (name.isEmpty) {
      _showError('Please enter your name');
      return;
    }
    if (_selectedSkills.isEmpty) {
      _showError('Please add at least one skill');
      return;
    }
    if (location.isEmpty) {
      _showError('Please enter your location');
      return;
    }

    context.read<ProfileBloc>()
      ..add(ProfileEvent.nameChanged(name))
      ..add(ProfileEvent.locationChanged(location))
      ..add(const ProfileEvent.submitProfile());
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: widget.isEditing,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.isEditing ? 'Edit Profile' : 'Setup Your Profile'),
          automaticallyImplyLeading: widget.isEditing,
          leading: widget.isEditing
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.router.pop(),
                )
              : null,
        ),
      body: SafeArea(
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            // Pre-fill once when existing profile data arrives from API
            if (!state.isLoading && state.profile != null) {
              _prefillFromState(state);
            }

            if (state.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Failed to update profile. Please try again.'),
                  backgroundColor: theme.colorScheme.error,
                ),
              );
            }

            if (state.isSuccess) {
              context.router.pushAndPopUntil(
                const JobsListRoute(),
                predicate: (route) => false,
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),
                  Text(
                    'Tell us about yourself',
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Complete your profile to get personalised job recommendations',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.textTheme.bodySmall?.color,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  CustomTextField(
                    label: 'Full Name',
                    hint: 'Enter your full name',
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    prefixIcon: Icon(Icons.person_outline, color: theme.primaryColor),
                    enabled: !state.isSubmitting,
                  ),
                  SizedBox(height: 24.h),
                  Text('Skills', style: theme.textTheme.titleMedium),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hint: 'Add a skill (e.g., Flutter, React)',
                          controller: _skillController,
                          textInputAction: TextInputAction.done,
                          onSubmitted: (_) => _addSkill(),
                          prefixIcon: Icon(Icons.code, color: theme.primaryColor),
                          enabled: !state.isSubmitting,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      SizedBox(
                        height: 50.h,
                        width: 50.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: theme.primaryColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add, color: Colors.white),
                            onPressed: state.isSubmitting ? null : _addSkill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (_selectedSkills.isNotEmpty) ...[
                    SizedBox(height: 16.h),
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: _selectedSkills.map((skill) {
                        return Chip(
                          label: Text(skill),
                          deleteIcon: const Icon(Icons.close, size: 18),
                          onDeleted: state.isSubmitting
                              ? null
                              : () => _removeSkill(skill),
                          backgroundColor: theme.primaryColor.withValues(alpha: 0.1),
                          labelStyle: theme.textTheme.labelMedium?.copyWith(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                  SizedBox(height: 24.h),
                  CustomTextField(
                    label: 'Location',
                    hint: 'Enter your city',
                    controller: _locationController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: theme.primaryColor,
                    ),
                    enabled: !state.isSubmitting,
                  ),
                  SizedBox(height: 40.h),
                  CustomButton(
                    text: 'Complete Profile',
                    onPressed: _handleSubmit,
                    isLoading: state.isSubmitting,
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            );
          },
        ),
      ),
      ),
    );
  }
}
