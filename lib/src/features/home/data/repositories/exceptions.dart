class FirebaseExceptions implements Exception {
  FirebaseExceptions(this.message);
  final String message;
}

class CacheExceptions implements Exception {
  CacheExceptions(this.message);
  final String message;
}

class ServerExceptions implements Exception {
  ServerExceptions(this.message);
  final String message;
}

class ConnectionExceptions implements Exception {
  ConnectionExceptions(this.message);
  final String message;
}

class UnknownExceptions implements Exception {
  UnknownExceptions(this.message);
  final String message;
}
