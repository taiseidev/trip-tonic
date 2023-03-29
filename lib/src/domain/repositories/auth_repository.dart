abstract class AuthRepository {
  Future<void> singInAnonymously();
  Future<void> singInGoogle();
  Future<void> singInApple();
}
