import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTwoTextsWidget extends StatelessWidget {
  const CustomTwoTextsWidget(
      {super.key, required this.text1, required this.text2});

  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: text1, style: AppStyles.poppins400Style12),
      TextSpan(
        text: text2,
        style: AppStyles.poppins400Style12.copyWith(color: AppColors.grey),
      )
    ]));
  }
}
