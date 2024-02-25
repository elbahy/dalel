import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/functions/toast_msg.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SigninFormWidget extends StatelessWidget {
  const SigninFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
          if (FirebaseAuth.instance.currentUser!.emailVerified) {
            toastMsg(msg: 'Sign in successfully');
            customReplacementNavigate(context, '/home');
          } else {
            toastMsg(
                msg: 'please verify your email address',
                toastLength: Toast.LENGTH_LONG);
          }
        } else if (state is SigninFailureState) {
          toastMsg(msg: state.errorMessage, toastLength: Toast.LENGTH_LONG);
        }
      },
      builder: (context, state) {
        return Form(
            key: authCubit.signinFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  label: AppStrings.emailAddress,
                  onChanged: (value) {
                    authCubit.emailAddress = value;
                  },
                ),
                CustomTextFormField(
                  label: AppStrings.password,
                  onChanged: (value) {
                    authCubit.password = value;
                  },
                  obscureText: authCubit.obscureText,
                  suffixIcon: IconButton(
                      onPressed: () {
                        authCubit.changeObscureText();
                      },
                      icon: authCubit.obscureText
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () => customNavigate(context, '/forgotPassword'),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        AppStrings.forgotPassword,
                        style: AppStyles.poppins400Style12
                            .copyWith(fontWeight: FontWeight.w600),
                      )),
                ),
                const SizedBox(height: 102),
                state is SigninLoadingState
                    ? const CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomButton(
                        text: AppStrings.signIn,
                        onPressed: () {
                          if (authCubit.signinFormKey.currentState!
                              .validate()) {
                            authCubit.signinWithEmailAndPassword();
                          }
                        })
              ],
            ));
      },
    );
  }
}
