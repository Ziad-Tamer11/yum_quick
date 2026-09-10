import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yum_quick/features/auth/domain/entities/user_entity.dart';
import 'package:yum_quick/features/auth/domain/usecases/auth_usecase.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.authUseCase}) : super(SignUpInitial());
  final AuthUseCase authUseCase;
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    required String phone,
    required DateTime dateOfBirth,
  }) async {
    emit(SignUpLoading());
    var result = await authUseCase.signUp(
      email: email,
      password: password,
      name: name,
      phone: phone,
      dateOfBirth: dateOfBirth,
    );
    result.fold(
      (failure) => emit(SignUpFailure(errMessage: failure.errMessage)),
      (user) => emit(SignUpSuccess(user: user)),
    );
  }
}
