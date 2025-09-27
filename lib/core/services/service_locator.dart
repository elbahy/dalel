import 'package:get_it/get_it.dart';
import 'package:refawy/core/services/firebase_services.dart';
import 'package:refawy/features/auth/data/repos/auth_repo_empl.dart';
import 'package:refawy/features/auth/domain/repos/auth_repo.dart';
import 'package:refawy/core/databases/cache/cache_helper.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(AuthRepoEmpl(getIt<FirebaseAuthService>()));
}
