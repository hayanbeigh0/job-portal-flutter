import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/presentation/widgets/custom_text_field.dart';
import '../../application/auth_bloc/auth_bloc.dart';
import '../../application/login_bloc/login_bloc.dart';
import '../../../../app/router/app_router.dart';

class OtpVerificationPageView extends StatefulWidget {
  final String phoneNumber;

  const OtpVerificationPageView({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<OtpVerificationPageView> createState() =>
      _OtpVerificationPageViewState();
}

class _OtpVerificationPageViewState extends State<OtpVerificationPageView> {
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  String? _validateOtp(String otp) {
    if (otp.isEmpty) {
      return 'OTP is required';
    }
    if (otp.length != 6) {
      return 'OTP must be 6 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(otp)) {
      return 'OTP must contain only digits';
    }
    return null;
  }

  void _handleVerifyOtp() {
    final otp = _otpController.text.trim();
    final error = _validateOtp(otp);

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
          LoginEvent.otpChanged(otp),
        );
    context.read<LoginBloc>().add(
          const LoginEvent.verifyOtpPressed(),
        );
  }

  void _handleResendOtp() {
    context.read<LoginBloc>().add(
          const LoginEvent.sendOtpPressed(),
        );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('OTP sent successfully'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listenWhen: (previous, current) =>
              (previous.successUser == null && current.successUser != null) ||
              (previous.failure == null && current.failure != null),
          listener: (context, state) {
            if (state.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Invalid OTP. Please try again.'),
                  backgroundColor: theme.colorScheme.error,
                ),
              );
            }

            if (state.successUser != null) {
              context.read<AuthBloc>().add(
                    AuthEvent.userAuthenticated(state.successUser!),
                  );
              context.router.replaceAll([const SplashRoute()]);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Text(
                    'Verify OTP',
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 12.h),
                  RichText(
                    text: TextSpan(
                      text: 'We have sent a 6-digit code to ',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.textTheme.bodySmall?.color,
                      ),
                      children: [
                        TextSpan(
                          text: '+91 ${widget.phoneNumber}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.textTheme.bodyLarge?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomTextField(
                    label: 'Enter OTP',
                    hint: 'Enter 6-digit code',
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => _handleVerifyOtp(),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: theme.primaryColor,
                    ),
                    enabled: !state.isSubmitting,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive the code? ",
                        style: theme.textTheme.bodyMedium,
                      ),
                      GestureDetector(
                        onTap: state.isSubmitting ? null : _handleResendOtp,
                        child: Text(
                          'Resend',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  CustomButton(
                    text: 'Verify & Continue',
                    onPressed: _handleVerifyOtp,
                    isLoading: state.isSubmitting,
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
