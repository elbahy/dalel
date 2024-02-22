import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/features/auth/presentation/views/functions/get_border_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      this.onChanged,
      this.onFieldSubmitted,
      this.obscureText = false,
      this.suffixIcon});

  final String label;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool obscureText;
  final IconButton? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 25, 8, 0),
      child: TextFormField(
          validator: (value) =>
              value!.isEmpty ? 'This field is required' : null,
          obscureText: obscureText,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          style:
              AppStyles.poppins500Style16.copyWith(color: AppColors.deepBlue),
          decoration: InputDecoration(
            label: Text(label),
            labelStyle: AppStyles.poppins500Style16,
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
            suffixIcon: suffixIcon,
          )),
    );
  }
}
