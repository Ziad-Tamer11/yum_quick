import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_app_bar.dart';
import 'package:yum_quick/core/widgets/custom_text_form_field.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/custom_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .055),
        CustomAppBar(title: 'Log In'),
        SizedBox(height: 59),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: kHorizontalPadding,
                left: kHorizontalPadding,
                top: 34,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome', style: TextStyles.semiBold24),
                  const SizedBox(height: 19),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                    style: TextStyles.light14,
                  ),
                  const SizedBox(height: 46),
                  CustomText(text: 'Email or Mobile Number'),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'example@example.com',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
