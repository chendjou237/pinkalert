import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:intellibra/src/core/error/failure.dart';
import 'package:intellibra/src/core/utils/enums/articles_enum.dart';
import 'package:intellibra/src/core/utils/helpers/internet_connections.dart';
import 'package:intellibra/src/core/utils/logger.dart';
import 'package:intellibra/src/features/home/data/datasources/local_data_source.dart';
import 'package:intellibra/src/features/home/data/datasources/remote_data_source.dart';
import 'package:intellibra/src/features/home/data/models/home_model.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';
import 'package:intellibra/src/features/home/data/repositories/exceptions.dart';
import 'package:intellibra/src/features/home/domain/repositories/article_repository.dart';

class ArticleRepositoryImp extends ArticleRepository {
  ArticleRepositoryImp(
    this._remoteDataSource,
    this._localPostDataSource,
  ) : super();
  final RemoteDataSource _remoteDataSource;
  final LocalArticleDataSource _localPostDataSource;

  @override
  Future<Either<Failure, HomeModel>> getRemoteArticles() async {
    final isInternetConnected = await checkCconnectivity();
    if (!isInternetConnected) {
      return const Left(ConnectionFailure('No Internet Connection'));
    }
    try {
      final data = await _remoteDataSource.getArticles();
      final articles = data.map(PostModel.fromMap).toList();
      final home = await _store(articles);

      return Right(home);
    } on FirebaseException catch (e) {
      logE(e.message);
      return const Left(
        ServerFailure('server is down, try again later'),
      );
    } on CacheExceptions catch (e) {
      logE(e.toString());
      return const Left(CacheFailure('your cache is broken'));
    } on Exception catch (e) {
      logE(e.toString());
      return Left(UnknownFailure(e.toString()));
    }
  }

  HomeModel _sort(List<PostModel> posts) {
    final popularPosts = posts.toList()
      ..sort((a, b) => b.points.compareTo(a.points));
    final recentPosts = posts.toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    final authorChoicePosts = posts.where((post) => post.authorChoice).toList();
    final homeModel = HomeModel(
      popularArticles: popularPosts,
      recentArticles: recentPosts,
      recommendedArticles: authorChoicePosts,
    );
    return homeModel;
  }

  Future<HomeModel> _store(List<PostModel> posts) async {
    try {
      final home = _sort(posts);
      await _localPostDataSource.writePosts(
        home.popularArticles,
      );
      return home;
    } on Exception catch (e) {
      throw CacheExceptions(e.toString());
    }
  }

  @override
  Future<Either<Failure, HomeModel>> getLocalArticles(
    ArticlesEnum type,
  ) async {
    try {
      final posts = await _localPostDataSource.readPosts();
      logD('entered the lcl art fxn');
      final home = _sort(posts);
      return Right(home);
    } on Exception catch (e) {
      logE(e.toString());
      return const Left(CacheFailure('No cached data found'));
    }
  }
}
