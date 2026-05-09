import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/presentation/widgets/custom_text_field.dart';
import '../../application/login_bloc/login_bloc.dart';
import '../../../../app/router/app_router.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  String? _validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return 'Phone number is required';
    }
    if (phoneNumber.length != 10) {
      return 'Phone number must be 10 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
      return 'Phone number must contain only digits';
    }
    return null;
  }

  void _handleSendOtp() {
    final phoneNumber = _phoneController.text.trim();
    final error = _validatePhoneNumber(phoneNumber);

    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
      return;
    }

    context.read<LoginBloc>().add(
          LoginEvent.phoneNumberChanged(phoneNumber),
        );
    context.read<LoginBloc>().add(
          const LoginEvent.sendOtpPressed(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listenWhen: (previous, current) =>
              (!previous.otpSent && current.otpSent) ||
              (previous.failure == null && current.failure != null),
          listener: (context, state) {
            if (state.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Failed to send OTP. Please try again.'),
                  backgroundColor: theme.colorScheme.error,
                ),
              );
            }

            if (state.otpSent) {
              context.router.push(
                OtpVerificationRoute(phoneNumber: state.phoneNumber),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h),
                  Text(
                    'Welcome to',
                    style: theme.textTheme.displaySmall,
                  ),
                  Text(
                    'New Job Portal',
                    style: theme.textTheme.displayMedium?.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Find your dream job with us',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.textTheme.bodySmall?.color,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  CustomTextField(
                    label: 'Phone Number',
                    hint: 'Enter your 10-digit mobile number',
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => _handleSendOtp(),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                      color: theme.primaryColor,
                    ),
                    enabled: !state.isSubmitting,
                  ),
                  SizedBox(height: 32.h),
                  CustomButton(
                    text: 'Send OTP',
                    onPressed: _handleSendOtp,
                    isLoading: state.isSubmitting,
                  ),
                  SizedBox(height: 24.h),
                  Center(
                    child: Text(
                      'By continuing, you agree to our Terms & Conditions',
                      style: theme.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 24.h),
                      child: Text(
                        'New Job Portal',
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
