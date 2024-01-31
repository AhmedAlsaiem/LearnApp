abstract class AuthRepo {
  Future<void> signInEmailPassword();
  Future<void> signUpEmailPassword();
  Future<void> signInGoogleAcount();
  Future<void> ChangePassword();
}
