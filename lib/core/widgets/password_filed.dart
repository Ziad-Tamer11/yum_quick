import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved, this.hintText});
  final void Function(String?)? onSaved;
  final String? hintText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: isVisible,
      obscuringCharacter: '*',
      onSaved: widget.onSaved,
      hintText: widget.hintText ?? '*************',
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        icon: isVisible
            ? SvgPicture.asset(Assets.imagesVisibilityOn)
            : SvgPicture.asset(Assets.imagesVisibilityOff),
        color: AppColors.orangeBase,
      ),
    );
  }
}
