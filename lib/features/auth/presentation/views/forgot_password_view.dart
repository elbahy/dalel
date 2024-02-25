import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/features/auth/presentation/views/widgets/forgot_password_form.dart';
import 'package:dalel/features/auth/presentation/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
          const SliverToBoxAdapter(
              child: MainTitle(text: AppStrings.forgotPasswordPage)),
          SliverToBoxAdapter(
              child: SizedBox(
                  height: 235,
                  child: Image.asset(Assets.assetsImagesPassword))),
          SliverToBoxAdapter(
              child: Text(AppStrings.receivePasswordReset,
                  textAlign: TextAlign.center,
                  style: AppStyles.poppins400Style12
                      .copyWith(fontSize: 16, height: 2))),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          const SliverToBoxAdapter(
            child: ForgotPasswordFormWidget(),
          )
        ],
      ),
    ));
  }
}
