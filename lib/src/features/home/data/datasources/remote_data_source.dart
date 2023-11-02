import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intellibra/src/core/utils/logger.dart';

class RemoteDataSource {
  RemoteDataSource(FirebaseFirestore firestore) : _firestore = firestore;
  final FirebaseFirestore _firestore;

  Future<List<Map<String, dynamic>>> getArticles() async {
    final posts = await _firestore.collection('articles').get();
    final results = posts.docs.map((post) => post.data()).toList();
    logD(results.toString());
    return results;
  }
}
