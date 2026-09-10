import 'package:dartz/dartz.dart';
import 'package:yum_quick/core/errors/failure.dart';
import 'package:yum_quick/features/auth/domain/entities/user_entity.dart';
import 'package:yum_quick/features/auth/domain/repos/auth_repo.dart';

class AuthUseCase {
  final AuthRepo authRepo;

  const AuthUseCase(this.authRepo);

  Future<Either<Failure, UserEntity>> login({
    required String emailOrPhone,
    required String password,
  }) {
    return authRepo.login(emailOrPhone: emailOrPhone, password: password);
  }

  Future<Either<Failure, UserEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String phone,
    required DateTime dateOfBirth,
  }) {
    return authRepo.signUp(
      name: name,
      email: email,
      password: password,
      phone: phone,
      dateOfBirth: dateOfBirth,
    );
  }
}
