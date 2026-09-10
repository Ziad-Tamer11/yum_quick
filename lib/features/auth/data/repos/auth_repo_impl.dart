import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yum_quick/core/errors/failure.dart';
import 'package:yum_quick/core/services/database_service.dart';
import 'package:yum_quick/core/services/firebase_auth_service.dart';
import 'package:yum_quick/core/utils/backend_endpoint.dart';
import 'package:yum_quick/features/auth/data/models/user_model.dart';
import 'package:yum_quick/features/auth/domain/entities/user_entity.dart';
import 'package:yum_quick/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.databaseService,
  });

  @override
  Future<Either<Failure, UserEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String phone,
    required DateTime dateOfBirth,
  }) async {
    User? firebaseUser;
    try {
      firebaseUser = await firebaseAuthService.signUp(
        email: email,
        password: password,
      );
      final user = UserModel(
        uid: firebaseUser.uid,
        name: name,
        email: email,
        phone: phone,
        dateOfBirth: dateOfBirth,
      );
      await databaseService.addData(
        path: BackendEndpoint.addUserData,
        documentId: user.uid,
        data: user.toJson(),
      );
      return Right(user);
    } on Failure catch (failure) {
      if (firebaseUser != null) await firebaseAuthService.deleteUser();
      return Left(failure);
    } catch (e) {
      if (firebaseUser != null) await firebaseAuthService.deleteUser();
      log('Exception in AuthRepoImpl.signUp: $e');
      return const Left(
        CustomException('Something went wrong. Please try again.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> login({
    required String emailOrPhone,
    required String password,
  }) async {
    try {
      var email = emailOrPhone;

      final isEmail = emailOrPhone.contains('@');
      if (!isEmail) {
        final users =
            await databaseService.getData(
                  path: BackendEndpoint.getUserData,
                  query: {
                    'where': [
                      {'field': 'phone', 'isEqualTo': emailOrPhone},
                    ],
                  },
                )
                as List;

        if (users.isEmpty) {
          return const Left(CustomException('Incorrect email or password.'));
        }
        email = users.first['email'];
      }

      final firebaseUser = await firebaseAuthService.login(
        email: email,
        password: password,
      );
      final userData = await databaseService.getData(
        path: BackendEndpoint.getUserData,
        documentId: firebaseUser.uid,
      );
      return Right(UserModel.fromJson(userData));
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      log('Exception in AuthRepoImpl.login: $e');
      return const Left(
        CustomException('Something went wrong. Please try again.'),
      );
    }
  }
}
