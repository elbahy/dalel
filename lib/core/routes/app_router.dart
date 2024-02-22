import 'package:dalel/features/auth/presentation/views/signin_view.dart';
import 'package:dalel/features/auth/presentation/views/signup_view.dart';
import 'package:dalel/features/onboarding/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignupView(),
      ),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SigninView(),
      ),
    ),
  ],
);
