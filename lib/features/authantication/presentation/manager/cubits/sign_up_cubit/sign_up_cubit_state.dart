class SignUpCubitState {}

class SignUpIsLoadingCubitStatec extends SignUpCubitState {}

class SignUpSucessCubitState extends SignUpCubitState {final String sucessMessage;

  SignUpSucessCubitState({required this.sucessMessage});}

class SignUpFailedCubitState extends SignUpCubitState {final String errorMessage;

  SignUpFailedCubitState({required this.errorMessage});}
