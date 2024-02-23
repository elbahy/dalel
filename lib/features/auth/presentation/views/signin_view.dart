import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_two_text.dart';
import 'package:dalel/features/auth/presentation/views/widgets/signin_appbar.dart';
import 'package:dalel/features/auth/presentation/views/widgets/signin_form_widget.dart';
import 'package:dalel/features/auth/presentation/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SigninAppBar()),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
          const SliverToBoxAdapter(
              child: WelcomeText(text: AppStrings.welcomeBack)),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SigninFormWidget(),
          )),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: CustomTwoTextsWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () => customReplacementNavigate(context, '/signup'),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}
