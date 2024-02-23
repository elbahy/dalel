import 'package:bloc/bloc.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? emailAddress, password;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();
  GlobalKey<FormState> resetFormKey = GlobalKey();
  bool termsAndConditionsValue = false;
  bool obscureText = true;

  signupWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailureState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFailureState(
            errorMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignupFailureState(errorMessage: e.toString()));
    }
  }

  changeTermsAndConditionsValue(bool newValue) {
    termsAndConditionsValue = newValue;
    emit(TermsAndConditionsState());
  }

  changeObscureText() {
    obscureText = !obscureText;
    emit(PasswordVisibilityState());
  }

  signinWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SigninFailureState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SigninFailureState(
            errorMessage: 'Wrong password provided for that user.'));
      } else if (e.code == 'invalid-credential') {
        emit(
            SigninFailureState(errorMessage: 'Check your Email and password!'));
      }
    } catch (e) {
      emit(SigninFailureState(errorMessage: e.toString()));
    }
  }
}
