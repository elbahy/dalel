import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextHeader extends StatelessWidget {
  const CustomTextHeader({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.poppins400Style20);
  }
}
