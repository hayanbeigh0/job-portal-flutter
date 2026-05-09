import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonType { primary, secondary, outlined, text }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final ButtonType type;
  final Widget? icon;
  final double? width;
  final double? height;
  final bool enabled;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.type = ButtonType.primary,
    this.icon,
    this.width,
    this.height,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDisabled = !enabled || isLoading || onPressed == null;

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50.h,
      child: _buildButton(context, theme, isDisabled),
    );
  }

  Widget _buildButton(BuildContext context, ThemeData theme, bool isDisabled) {
    switch (type) {
      case ButtonType.primary:
        return ElevatedButton(
          onPressed: isDisabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.primaryColor,
            foregroundColor: Colors.white,
            disabledBackgroundColor: theme.primaryColor.withOpacity(0.5),
            disabledForegroundColor: Colors.white.withOpacity(0.7),
          ),
          child: _buildChild(context, Colors.white),
        );
      case ButtonType.secondary:
        return ElevatedButton(
          onPressed: isDisabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.secondary,
            foregroundColor: Colors.white,
            disabledBackgroundColor: theme.colorScheme.secondary.withOpacity(0.5),
            disabledForegroundColor: Colors.white.withOpacity(0.7),
          ),
          child: _buildChild(context, Colors.white),
        );
      case ButtonType.outlined:
        return OutlinedButton(
          onPressed: isDisabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: theme.primaryColor,
            side: BorderSide(
              color: isDisabled
                  ? theme.primaryColor.withOpacity(0.3)
                  : theme.primaryColor,
              width: 1.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          ),
          child: _buildChild(context, theme.primaryColor),
        );
      case ButtonType.text:
        return TextButton(
          onPressed: isDisabled ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: theme.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          ),
          child: _buildChild(context, theme.primaryColor),
        );
    }
  }

  Widget _buildChild(BuildContext context, Color textColor) {
    if (isLoading) {
      return SizedBox(
        height: 20.h,
        width: 20.h,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(textColor),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          SizedBox(width: 8.w),
          Text(text),
        ],
      );
    }

    return Text(text);
  }
}
