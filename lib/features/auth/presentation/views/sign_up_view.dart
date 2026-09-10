import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yum_quick/core/di/service_locator.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/features/auth/domain/usecases/auth_usecase.dart';
import 'package:yum_quick/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/sign_up_view_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBase,
      body: SafeArea(
        bottom: false,
        child: BlocProvider(
          create: (context) => SignUpCubit(authUseCase: getIt<AuthUseCase>()),
          child: const SignUpViewBlocConsumer(),
        ),
      ),
    );
  }
}
