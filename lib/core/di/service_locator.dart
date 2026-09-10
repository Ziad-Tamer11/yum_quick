import 'package:get_it/get_it.dart';
import 'package:yum_quick/core/services/database_service.dart';
import 'package:yum_quick/core/services/firebase_auth_service.dart';
import 'package:yum_quick/core/services/firestore_service.dart';
import 'package:yum_quick/features/auth/data/repos/auth_repo_impl.dart';
import 'package:yum_quick/features/auth/domain/repos/auth_repo.dart';
import 'package:yum_quick/features/auth/domain/usecases/auth_usecase.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  getIt.registerLazySingleton<DatabaseService>(() => FirestoreService());
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(firebaseAuthService: getIt(), databaseService: getIt()),
  );
  getIt.registerLazySingleton<AuthUseCase>(() => AuthUseCase(getIt()));
}
