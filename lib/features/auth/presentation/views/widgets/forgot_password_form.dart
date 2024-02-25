import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/functions/toast_msg.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPasswordFormWidget extends StatelessWidget {
  const ForgotPasswordFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          toastMsg(msg: 'Reset password link sent to your email');
          customNavigate(context, '/signin');
        } else if (state is ResetPasswordFailureState) {
          toastMsg(msg: state.errorMessage, toastLength: Toast.LENGTH_LONG);
        }
      },
      builder: (context, state) {
        return Form(
            key: authCubit.resetFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                    label: AppStrings.emailAddress,
                    onChanged: (value) => authCubit.emailAddress = value),
                const SizedBox(height: 129),
                state is ResetPasswordLoadingState
                    ? const CircularProgressIndicator(
                        color: AppColors.primaryColor)
                    : CustomButton(
                        text: AppStrings.sendResetPasswordLink,
                        onPressed: () async {
                          if (authCubit.resetFormKey.currentState!.validate()) {
                            await authCubit.resetPassword();
                          }
                        })
              ],
            ));
      },
    );
  }
}
