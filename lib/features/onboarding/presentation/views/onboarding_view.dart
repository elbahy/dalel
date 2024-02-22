import 'package:dalel/features/onboarding/presentation/views/widgets/custom_navbar.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_body.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_button.dart';
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
            OnBoardingButton(
              currentPage: currentPage,
              controller: _controller,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
