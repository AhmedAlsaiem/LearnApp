class SignUpCubitState {}

class SignUpIsLoadingCubitStatec extends SignUpCubitState {}

class SignUpSucessCubitState extends SignUpCubitState {}

class SignUpFailedCubitState extends SignUpCubitState {final String errorMessage;

  SignUpFailedCubitState({required this.errorMessage});}
