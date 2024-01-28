import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/custom_navbar.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CustomNavbar(),
            Expanded(
              child: OnBoardingBody(
                controller: _controller,
                onPageChanged: (index) {
                  currentPage = index;
                  setState(() {});
                },
              ),
            ),
            currentPage == onBoardingList.length - 1
                ? Column(
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
                          customReplacementNavigate(context, '/login');
                        },
                        child: Text(
                          AppStrings.loginNow,
                          style: AppStyles.poppins300Style16.copyWith(
                              color: AppColors.deepGrey,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )
                : CustomButton(
                    text: AppStrings.next,
                    onPressed: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOutCubicEmphasized);
                    },
                  ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    ));
  }
}
