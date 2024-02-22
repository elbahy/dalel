import 'package:bloc/bloc.dart';
import 'package:dalel/features/onboarding/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? emailAddress, password;
  SignupWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      final credential =
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
}
