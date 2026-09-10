import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yum_quick/features/auth/domain/entities/user_entity.dart';
import 'package:yum_quick/features/auth/domain/usecases/auth_usecase.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authUseCase}) : super(LoginInitial());
  final AuthUseCase authUseCase;
  Future<void> login({
    required String emailOrPhone,
    required String password,
  }) async {
    emit(LoginLoading());
    var result = await authUseCase.login(
      emailOrPhone: emailOrPhone,
      password: password,
    );
    result.fold(
      (failure) => emit(LoginFailure(errMessage: failure.errMessage)),
      (userEntity) => emit(LoginSuccess(userEntity: userEntity)),
    );
  }
}
