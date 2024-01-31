import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class AuthFailure extends Failure {
  AuthFailure({required super.errorMessage});
  factory AuthFailure.fromAuthException(FirebaseAuthException authException) {
    switch (authException.code) {
      case "ERROR_EMAIL_ALREADY_IN_USE":
      case "account-exists-with-different-credential":
      case "email-already-in-use":
        return AuthFailure(
            errorMessage: "Email already used. Go to login page.");

      case "ERROR_WRONG_PASSWORD":
      case "wrong-password":
        return AuthFailure(errorMessage: "Wrong email/password combination.");

      case "ERROR_USER_NOT_FOUND":
      case "user-not-found":
        return AuthFailure(errorMessage: "Wrong email/password combination.");

      case "ERROR_USER_DISABLED":
      case "user-disabled":
        return AuthFailure(errorMessage: "Wrong email/password combination.");

      case "ERROR_TOO_MANY_REQUESTS":
      case "operation-not-allowed":
        return AuthFailure(
            errorMessage: "Too many requests to log into this account.");

      case "ERROR_OPERATION_NOT_ALLOWED":
        return AuthFailure(
            errorMessage: "Server error, please try again later.");

      case "ERROR_INVALID_EMAIL":
      case "invalid-email":
        return AuthFailure(
            errorMessage: "Server error, please try again later.");

      default:
        return AuthFailure(errorMessage: "Login failed. Please try again.");
    }
  }
}
