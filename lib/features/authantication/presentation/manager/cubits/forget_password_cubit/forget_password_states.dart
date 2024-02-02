class ForgetPasswordState {}

class ForgetPasswordIsLoadingState extends ForgetPasswordState {}

class ForgetPasswordSucessState extends ForgetPasswordState {
  final String sucessMessage;

  ForgetPasswordSucessState({required this.sucessMessage});
}

class ForgetPasswordFailedState extends ForgetPasswordState {
  final String errorMessage;

  ForgetPasswordFailedState({required this.errorMessage});
}
