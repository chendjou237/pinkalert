import 'package:dartz/dartz.dart';
import 'package:intellibra/src/core/error/failure.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';

abstract class ArticleRepository {
  List<PostModel> getOurPreferenceArticles();
  List<PostModel> getRecentArticles();
  List<PostModel> getPopularArticles();
  Future<Either<Failure, List<PostModel>>> getAllArticles();
}
