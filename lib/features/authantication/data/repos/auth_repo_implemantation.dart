import 'package:i_learn/core/errors/auth_faliure.dart';
import 'package:i_learn/features/authantication/data/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImplemantation implements AuthRepo {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Future<String> forgetPssword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      return "Password reset email sent";
    } catch (e) {
      return "Error sending password reset email: ${e.toString()}";
    }
  }

  @override
  Future<String> signInEmailPassword(
      {required String email, required String password}) async {
    try {
      if (auth.currentUser != null) {
        if (auth.currentUser!.emailVerified) {
          await auth.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          return 'sucess';
        } else {
          return 'Email is not verified';
        }
      } else {
        return 'User not found';
      }
    } on FirebaseAuthException catch (e) {
      return await AuthFailure.fromAuthException(e).errorMessage;
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future<String> signInGoogleAcount() {
    throw UnimplementedError();
  }

  @override
  Future<String> signUpEmailPassword(
      {required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await auth.currentUser!.sendEmailVerification();
      return 'sucess';
    } on FirebaseAuthException catch (e) {
      return await AuthFailure.fromAuthException(e).errorMessage;
    } catch (e) {
      return e.toString();
    }
  }
}
