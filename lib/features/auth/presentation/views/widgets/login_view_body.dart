import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_app_bar.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';
import 'package:yum_quick/core/widgets/custom_text_form_field.dart';
import 'package:yum_quick/core/widgets/password_filed.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/custom_text.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/forget_password.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/prompt_text.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/social_button.dart';

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
                  const SizedBox(height: 40),
                  CustomText(text: 'Email or Mobile Number'),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'example@example.com',
                  ),
                  const SizedBox(height: 22),
                  CustomText(text: 'Password '),
                  PasswordField(),
                  SizedBox(height: 14),
                  ForgetPassword(onTap: () {}),
                  const SizedBox(height: 40),
                  Center(
                    child: CustomButton(title: 'Log In', onPressed: () {}),
                  ),
                  const SizedBox(height: 29),
                  Center(
                    child: Text('or sign up with', style: TextStyles.light14),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SocialButton(image: Assets.imagesGoogle),
                      SocialButton(image: Assets.imagesFacebook),
                      SocialButton(image: Assets.imagesFingerprint),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(child: PromptText(onTap: () {})),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
