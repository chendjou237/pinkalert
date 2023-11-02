import 'package:dartz/dartz.dart';
import 'package:intellibra/src/core/error/failure.dart';
import 'package:intellibra/src/core/utils/enums/articles_enum.dart';
import 'package:intellibra/src/features/home/data/models/home_model.dart';

abstract class ArticleRepository {
  Future<Either<Failure, HomeModel>> getLocalArticles(ArticlesEnum type);
  Future<Either<Failure, HomeModel>> getRemoteArticles();
}
