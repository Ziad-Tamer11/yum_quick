import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/utils/date_input_formatter.dart';
import 'package:yum_quick/core/widgets/custom_app_bar.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';
import 'package:yum_quick/core/widgets/custom_text_form_field.dart';
import 'package:yum_quick/core/widgets/password_filed.dart';
import 'package:yum_quick/core/widgets/show_message_bar.dart';
import 'package:yum_quick/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/custom_text.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/prompt_text.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/social_button.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final _formKey = GlobalKey<FormState>();
  var autovalidateMode = AutovalidateMode.disabled;

  late String name, email, password, phone, dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .055),
          const CustomAppBar(title: 'New Account'),
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
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const CustomText(text: 'Full name'),
                      CustomTextFormField(
                        keyboardType: TextInputType.name,
                        hintText: 'example',
                        onSaved: (value) => name = value!,
                      ),
                      const SizedBox(height: 11),
                      const CustomText(text: 'Email'),
                      CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'example@example.com',
                        onSaved: (value) => email = value!,
                      ),
                      const SizedBox(height: 11),
                      const CustomText(text: 'Password'),
                      PasswordField(
                        hintText: '*************',
                        onSaved: (value) => password = value!,
                      ),
                      const SizedBox(height: 11),
                      const CustomText(text: 'Mobile Number'),
                      CustomTextFormField(
                        keyboardType: TextInputType.phone,
                        hintText: '+ 123 456 789',
                        onSaved: (value) => phone = value!,
                      ),
                      const SizedBox(height: 11),
                      const CustomText(text: 'Date of birth'),
                      CustomTextFormField(
                        keyboardType: TextInputType.number,
                        hintText: 'DD / MM /YYYY',
                        inputFormatters: [DateInputFormatter()],
                        onSaved: (value) => dateOfBirth = value!,
                      ),
                      const SizedBox(height: 20),
                      const TermsAndConditions(),
                      const SizedBox(height: 5),
                      CustomButton(
                        title: 'Sign Up',
                        onPressed: () => _signUp(context),
                      ),
                      const SizedBox(height: 7),
                      Center(
                        child: Text(
                          'or sign up with',
                          style: TextStyles.light14,
                        ),
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
                      const SizedBox(height: 9),
                      Center(
                        child: PromptText(
                          onTap: () {
                            context.pushReplacement(AppRouter.kLoginViewView);
                          },
                          text1: "Already have an account? ",
                          text2: 'Log in',
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signUp(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      setState(() => autovalidateMode = AutovalidateMode.always);
      return;
    }
    _formKey.currentState!.save();

    if (dateOfBirth.length != 10) {
      showMessageBar(
        context,
        'Please enter a valid date of birth.',
        const Color(0xFFF44336),
      );
      return;
    }

    final dateParts = dateOfBirth.split('/');
    final parsedDateOfBirth = DateTime(
      int.parse(dateParts[2]),
      int.parse(dateParts[1]),
      int.parse(dateParts[0]),
    );

    context.read<SignUpCubit>().signUp(
      name: name,
      email: email,
      password: password,
      phone: phone,
      dateOfBirth: parsedDateOfBirth,
    );
  }
}
