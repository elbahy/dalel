import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton(
      {super.key, required this.currentPage, required this.controller});
  final int currentPage;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentPage == onBoardingList.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, '/signup');
            },
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, '/signin');
            },
            child: Text(
              AppStrings.loginNow,
              style: AppStyles.poppins300Style16.copyWith(
                  color: AppColors.deepGrey, fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOutCubicEmphasized);
        },
      );
    }
  }
}
