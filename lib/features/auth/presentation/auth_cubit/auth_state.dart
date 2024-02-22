sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignupLoadingState extends AuthState {}

final class SignupSuccessState extends AuthState {}

final class SignupFailureState extends AuthState {
  final String errorMessage;

  SignupFailureState({required this.errorMessage});
}

final class TermsAndConditionsState extends AuthState {}

final class PasswordVisibilityState extends AuthState {}
