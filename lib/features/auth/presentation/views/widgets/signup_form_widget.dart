import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/functions/toast_msg.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          toastMsg(
              msg: 'Account created successfully, check your email to verify',
              toastLength: Toast.LENGTH_LONG);
          customReplacementNavigate(context, '/signin');
        } else if (state is SignupFailureState) {
          toastMsg(msg: state.errorMessage, toastLength: Toast.LENGTH_LONG);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signupFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                    label: AppStrings.fristName,
                    onChanged: (value) => authCubit.firstName = value),
                CustomTextFormField(
                    label: AppStrings.lastName,
                    onChanged: (value) => authCubit.lastName = value),
                CustomTextFormField(
                    label: AppStrings.emailAddress,
                    onChanged: (value) => authCubit.emailAddress = value),
                CustomTextFormField(
                  label: AppStrings.password,
                  obscureText: authCubit.obscureText,
                  suffixIcon: IconButton(
                      onPressed: () => authCubit.changeObscureText(),
                      icon: Icon(authCubit.obscureText
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  onChanged: (value) => authCubit.password = value,
                ),
                const TermsAndConditionsWidget(),
                const SizedBox(height: 88),
                state is SignupLoadingState
                    ? const CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomButton(
                        text: AppStrings.signUp,
                        onPressed: authCubit.termsAndConditionsValue
                            ? () async {
                                if (authCubit.termsAndConditionsValue) {
                                  if (authCubit.signupFormKey.currentState!
                                      .validate()) {
                                    await authCubit
                                        .signupWithEmailAndPassword();
                                  }
                                }
                              }
                            : null),
              ],
            ));
      },
    );
  }
}
