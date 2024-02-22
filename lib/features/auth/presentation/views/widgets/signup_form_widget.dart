import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:dalel/features/onboarding/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/onboarding/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            const CustomTextField(label: AppStrings.fristName),
            const CustomTextField(label: AppStrings.lastName),
            CustomTextField(
                label: AppStrings.emailAddress,
                onChanged: (value) {
                  getIt<AuthCubit>().emailAddress = value;
                }),
            CustomTextField(
              label: AppStrings.password,
              obscureText: true,
              onChanged: (value) {
                getIt<AuthCubit>().password = value;
              },
            ),
            const TermsAndConditionsWidget(),
            const SizedBox(height: 88),
            CustomButton(
                text: AppStrings.signUp,
                onPressed: () {
                  getIt<AuthCubit>().SignupWithEmailAndPassword();
                }),
          ],
        ));
      },
    );
  }
}
