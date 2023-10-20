import 'package:cloud_firestore/cloud_firestore.dart';

class RemoteDataSource {
  RemoteDataSource(FirebaseFirestore firestore) : _firestore = firestore;
  final FirebaseFirestore _firestore;

  Future<List<Map<String, dynamic>>> getArticles() async {
    final posts = await _firestore.collection('posts').get();
    return posts.docs.map((post) => post.data()).toList();
  }
}
