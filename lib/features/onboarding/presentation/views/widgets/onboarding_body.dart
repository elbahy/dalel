import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_text.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });
  final PageController controller;
  final void Function(int) onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              height: 290,
              width: 343,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(onBoardingList[index].image),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(height: 24),
            CustomSmoothIndicator(controller: controller),
            const SizedBox(height: 32),
            OnBoardingCustomText(
              text: onBoardingList[index].title,
              textStyle: AppStyles.poppins600Style24,
            ),
            const SizedBox(height: 16),
            OnBoardingCustomText(
              text: onBoardingList[index].subTitle,
              textStyle: AppStyles.poppins300Style16,
            ),
          ]);
        },
        itemCount: onBoardingList.length);
  }
}
