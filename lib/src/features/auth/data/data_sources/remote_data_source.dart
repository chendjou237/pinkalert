import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;
  final FirebaseAuth _firebaseAuth;
}
