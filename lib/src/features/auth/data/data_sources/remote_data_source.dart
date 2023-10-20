import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';

class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;
  final FirebaseAuth _firebaseAuth;
}
