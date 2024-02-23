import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordFormWidget extends StatelessWidget {
  const ForgotPasswordFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Form(
        key: authCubit.resetFormKey,
        child: Column(
          children: [
            const CustomTextFormField(label: AppStrings.emailAddress),
            const SizedBox(height: 129),
            CustomButton(
                text: AppStrings.sendResetPasswordLink,
                onPressed: () {
                  if (authCubit.resetFormKey.currentState!.validate()) {
                    customReplacementNavigate(context, '/signin');
                  }
                })
          ],
        ));
  }
}
