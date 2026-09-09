import 'package:flutter/material.dart';
import 'package:yum_quick/core/widgets/custom_app_bar.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .055),
        CustomAppBar(title: 'New Account'),
      ],
    );
  }
}
