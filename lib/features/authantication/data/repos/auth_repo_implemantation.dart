import 'package:i_learn/core/errors/auth_faliure.dart';
import 'package:i_learn/features/authantication/data/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImplemantation implements AuthRepo {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Future<String> forgetPssword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      return 'Password reset email sent';
    } on FirebaseAuthException catch (e) {
      return AuthFailure.fromAuthException(e).errorMessage;
    } catch (e) {
      return "Error,Password not updated: ${e.toString()}";
    }
  }

  @override
  Future<String> signInEmailPassword(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (FirebaseAuth.instance.currentUser != null &&
          FirebaseAuth.instance.currentUser!.emailVerified) {
        return 'success';
      } else {
        return 'Verify your acount';
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
      return 'success';
    } on FirebaseAuthException catch (e) {
      return await AuthFailure.fromAuthException(e).errorMessage;
    } catch (e) {
      return e.toString();
    }
  }
}
