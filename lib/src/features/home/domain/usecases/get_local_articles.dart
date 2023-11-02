import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intellibra/src/core/error/failure.dart';
import 'package:intellibra/src/core/utils/enums/articles_enum.dart';
import 'package:intellibra/src/core/utils/usecase.dart';
import 'package:intellibra/src/features/home/data/models/home_model.dart';
import 'package:intellibra/src/features/home/domain/repositories/article_repository.dart';

class GetLocalArticles implements UseCase<HomeModel, GetLocalArticlesParams> {
  GetLocalArticles(this.repository);
  final ArticleRepository repository;

  @override
  Future<Either<Failure, HomeModel>> call(
    GetLocalArticlesParams params,
  ) async {
    return repository.getLocalArticles(params.type);
  }
}

class GetLocalArticlesParams extends Equatable {
  const GetLocalArticlesParams(
    this.type,
  );

  final ArticlesEnum type;

  @override
  List<Object?> get props => [type];
}
