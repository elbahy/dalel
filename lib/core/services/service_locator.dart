import 'package:dalel/core/databases/cache/cache_helper.dart';
import 'package:dalel/features/onboarding/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
