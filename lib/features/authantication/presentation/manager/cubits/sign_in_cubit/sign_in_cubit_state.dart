class SignInCubitState {}

class SignInIsLoadingCubitStatec extends SignInCubitState {}

class SignInSucessCubitState extends SignInCubitState {}

class SignInFailedCubitState extends SignInCubitState {final String errorMessage;

  SignInFailedCubitState({required this.errorMessage});}
