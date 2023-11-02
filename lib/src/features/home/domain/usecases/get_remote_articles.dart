import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intellibra/src/core/error/failure.dart';
import 'package:intellibra/src/core/utils/usecase.dart';
import 'package:intellibra/src/features/home/data/models/home_model.dart';
import 'package:intellibra/src/features/home/domain/repositories/article_repository.dart';

class GetRemoteArticles implements UseCase<HomeModel, GetRemoteArticlesParams> {
  GetRemoteArticles(this.repository);
  final ArticleRepository repository;

  @override
  Future<Either<Failure, HomeModel>> call(
    GetRemoteArticlesParams params,
  ) async {
    return repository.getRemoteArticles();
  }
}

class GetRemoteArticlesParams extends Equatable {
  const GetRemoteArticlesParams(this.limit, this.offset, this.type);
  final int limit;
  final int offset;
  final String type;

  @override
  List<Object?> get props => [limit, offset, type];
}
