import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:intellibra/src/core/error/failure.dart';
import 'package:intellibra/src/core/utils/helpers/internet_connections.dart';
import 'package:intellibra/src/core/utils/logger.dart';
import 'package:intellibra/src/features/home/data/datasources/remote_data_source.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';
import 'package:intellibra/src/features/home/domain/repositories/article_repository.dart';

class ArticleRepositoryImp extends ArticleRepository {
  ArticleRepositoryImp(
    this._remoteDataSource,
  ) : super();
  final RemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<PostModel>>> getAllArticles() async {
    final isInternetConnected = await checkCconnectivity();
    if (!isInternetConnected) {
      logE('No Internet to get articles');
      return Left(ConnectionFailure(errorMessage: 'No Internet'));
    }
    try {
      final data = await _remoteDataSource.getArticles();
      final articles = data.map(PostModel.fromMap).toList();
      return Right(articles);
    } on FirebaseException catch (e) {
      logE(e.message);
      return Left(ServerFailure(errorMessage: 'Please try again later'));
    }
  }

  @override
  List<PostModel> getOurPreferenceArticles() {
    // TODO: implement getOurPreferenceArticles
    throw UnimplementedError();
  }

  @override
  List<PostModel> getPopularArticles() {
    // TODO: implement getPopularArticles
    throw UnimplementedError();
  }

  @override
  List<PostModel> getRecentArticles() {
    // TODO: implement getRecentArticles
    throw UnimplementedError();
  }
}
