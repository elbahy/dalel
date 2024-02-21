import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Text(AppStrings.welcome,
            style: AppStyles.poppins600Style24
                .copyWith(color: const Color(0xff333333))));
  }
}
