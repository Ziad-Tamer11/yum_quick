import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    required this.keyboardType,
    this.onSaved,
    this.obscureText = false,
    this.obscuringCharacter = '*',
    this.enabled = true, // ← جديد
  });

  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final String obscuringCharacter;
  final bool enabled; // ← جديد

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled, // ← جديد
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter text here';
        }
        return null;
      },
      style: TextStyles.regular20.copyWith(height: 0.70),
      keyboardType: keyboardType,
      onSaved: onSaved,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.yellowLight,
        hintText: hintText,
        hintStyle: TextStyles.regular20.copyWith(
          height: 0.70,
          color: AppColors.primaryFont.withValues(alpha: 0.7),
        ),
        errorStyle: TextStyles.regular20.copyWith(color: AppColors.red),
        suffixIcon: suffixIcon,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: buildBorder().copyWith(
          borderSide: BorderSide(color: AppColors.red),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: AppColors.yellowLight),
    );
  }
}
