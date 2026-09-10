import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/widgets/show_message_bar.dart';
import 'package:yum_quick/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showMessageBar(context, 'Login Success', const Color(0xFF4CAF50));
        }
        if (state is LoginFailure) {
          showMessageBar(context, state.errMessage, AppColors.red);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
