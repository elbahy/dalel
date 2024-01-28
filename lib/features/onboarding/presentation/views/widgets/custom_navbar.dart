import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigate(context, '/signup');
      },
      child: Align(
          alignment: Alignment.topRight,
          child: Text(
            AppStrings.skip,
            style: AppStyles.poppins300Style16
                .copyWith(fontWeight: FontWeight.w400),
          )),
    );
  }
}
