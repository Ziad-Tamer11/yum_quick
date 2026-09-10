import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_app_bar.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';
import 'package:yum_quick/core/widgets/custom_text_form_field.dart';
import 'package:yum_quick/core/widgets/password_filed.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/custom_text.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/prompt_text.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/social_button.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .055),
        CustomAppBar(title: 'New Account'),
        const SizedBox(height: 59),
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
                top: 24,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CustomText(text: 'Full name'),
                    CustomTextFormField(
                      keyboardType: TextInputType.name,
                      hintText: 'example',
                    ),
                    const SizedBox(height: 11),
                    CustomText(text: 'Email'),
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'example@example.com',
                    ),
                    const SizedBox(height: 11),
                    CustomText(text: 'Password'),
                    const PasswordField(hintText: '*************'),
                    const SizedBox(height: 11),
                    CustomText(text: 'Mobile Number'),
                    CustomTextFormField(
                      keyboardType: TextInputType.phone,
                      hintText: '+ 123 456 789',
                    ),
                    const SizedBox(height: 11),
                    CustomText(text: 'Date of birth'),
                    CustomTextFormField(
                      keyboardType: TextInputType.text,
                      hintText: 'DD / MM /YYY',
                    ),
                    const SizedBox(height: 20),
                    TermsAndConditions(),
                    const SizedBox(height: 5),
                    CustomButton(title: 'Sign Up', onPressed: () {}),
                    const SizedBox(height: 7),
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
                    SizedBox(height: 9),
                    Center(
                      child: PromptText(
                        onTap: () {
                          context.push(AppRouter.kLoginViewView);
                        },
                        text1: "Already have an account? ",
                        text2: 'Log in',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
