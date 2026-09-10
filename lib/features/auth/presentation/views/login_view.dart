import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yum_quick/core/di/service_locator.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/features/auth/domain/usecases/auth_usecase.dart';
import 'package:yum_quick/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:yum_quick/features/auth/presentation/views/widgets/login_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBase,
      body: SafeArea(
        bottom: false,
        child: BlocProvider(
          create: (context) => LoginCubit(authUseCase: getIt<AuthUseCase>()),
          child: LoginViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
