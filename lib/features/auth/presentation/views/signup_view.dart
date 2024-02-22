import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_two_text.dart';
import 'package:dalel/features/auth/presentation/views/widgets/signup_form_widget.dart';
import 'package:dalel/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:dalel/features/auth/presentation/views/widgets/welcome_text.dart';
import 'package:dalel/features/onboarding/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 136)),
            SliverToBoxAdapter(child: WelcomeText()),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: SignupFormWidget()),
            SliverToBoxAdapter(
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
