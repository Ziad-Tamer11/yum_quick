import 'package:dartz/dartz.dart';
import 'package:yum_quick/core/errors/failure.dart';
import 'package:yum_quick/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> login({
    required String emailOrPhone,
    required String password,
  });

  Future<Either<Failure, UserEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String phone,
    required DateTime dateOfBirth,
  });
}
