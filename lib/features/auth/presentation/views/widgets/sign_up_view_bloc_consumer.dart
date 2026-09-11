import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/core/widgets/show_message_bar.dart';
import 'package:yum_quick/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpViewBlocConsumer extends StatelessWidget {
  const SignUpViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showMessageBar(context, 'Account Created Successfully', Colors.green);
          context.go(AppRouter.kMainViewView);
        }
        if (state is SignUpFailure) {
          showMessageBar(context, state.errMessage, AppColors.red);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}
