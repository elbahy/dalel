import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_two_text.dart';
import 'package:dalel/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:dalel/features/auth/presentation/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 136)),
            const SliverToBoxAdapter(child: WelcomeText()),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            const SliverToBoxAdapter(
                child: CustomTextField(label: AppStrings.fristName)),
            const SliverToBoxAdapter(
                child: CustomTextField(label: AppStrings.lastName)),
            const SliverToBoxAdapter(
                child: CustomTextField(label: AppStrings.emailAddress)),
            const SliverToBoxAdapter(
                child: CustomTextField(label: AppStrings.password)),
            const SliverToBoxAdapter(child: TermsAndConditionsWidget()),
            const SliverToBoxAdapter(child: SizedBox(height: 88)),
            SliverToBoxAdapter(
                child: CustomButton(text: AppStrings.signUp, onPressed: () {})),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(
                child: CustomTwoTextsWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
            ))
          ],
        ),
      ),
    );
  }
}
