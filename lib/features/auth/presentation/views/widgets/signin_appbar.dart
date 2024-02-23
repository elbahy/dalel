import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SigninAppBar extends StatelessWidget {
  const SigninAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: AppColors.primaryColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        const Text(
          AppStrings.appName,
          style: AppStyles.saira700Style32,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.assetsImagesPyramids),
            const Spacer(),
            SvgPicture.asset(Assets.assetsImagesMosque),
          ],
        )
      ]),
    );
  }
}
