abstract class AuthenticationRepository {
  Future<void> signInAnonymously();
  Future<void> signOut();
  //TODO: Add other authentication methods
  
}
