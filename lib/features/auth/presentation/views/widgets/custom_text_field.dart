import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/features/auth/presentation/views/functions/get_border_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label});

  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 25, 8, 0),
      child: TextField(
          style:
              AppStyles.poppins500Style16.copyWith(color: AppColors.deepBlue),
          decoration: InputDecoration(
            label: Text(label),
            labelStyle: AppStyles.poppins500Style16,
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
          )),
    );
  }
}
