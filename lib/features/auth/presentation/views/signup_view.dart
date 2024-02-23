import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_two_text.dart';
import 'package:dalel/features/auth/presentation/views/widgets/signup_form_widget.dart';
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
            const SliverToBoxAdapter(
                child: WelcomeText(text: AppStrings.welcome)),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            const SliverToBoxAdapter(child: SignupFormWidget()),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
                child: CustomTwoTextsWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
              onTap: () {
                customReplacementNavigate(context, '/signin');
              },
            ))
          ],
        ),
      ),
    );
  }
}
