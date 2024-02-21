import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const CustomCheckBox(),
      const Text(AppStrings.iHaveAgreeToOur,
          style: AppStyles.poppins400Style12),
      Text(AppStrings.termsAndCondition,
          style: AppStyles.poppins400Style12
              .copyWith(decoration: TextDecoration.underline))
    ]);
  }
}
