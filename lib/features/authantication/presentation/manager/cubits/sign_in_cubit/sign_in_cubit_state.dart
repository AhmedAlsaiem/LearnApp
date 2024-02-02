class SignInCubitState {}

class SignInIsLoadingCubitStatec extends SignInCubitState {}

class SignInSucessCubitState extends SignInCubitState {
  final String sucessMessage;

  SignInSucessCubitState({required this.sucessMessage});
}

class SignInFailedCubitState extends SignInCubitState {
  final String errorMessage;

  SignInFailedCubitState({required this.errorMessage});
}
