
abstract class AuthRepo {
  Future<void> signInEmailPassword({required String email, required String password});
   Future<String> signUpEmailPassword({required String email,required String password});
  Future<void> signInGoogleAcount();
  Future<void> forgetPssword({required String email});
}
