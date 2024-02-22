import 'package:dalel/core/databases/cache/cache_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool isVisted = false;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      isVisted =
          getIt<CacheHelper>().getData(key: 'onBoardingIsVisited') ?? false;
      isVisted
          ? customReplacementNavigate(context, '/signup')
          : customReplacementNavigate(context, '/onBoarding');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        AppStrings.appName,
        style: AppStyles.pacifico400Style64,
      ),
    ));
  }
}
