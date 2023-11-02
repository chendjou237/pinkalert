import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:intellibra/src/core/utils/enums/articles_enum.dart';
import 'package:intellibra/src/core/utils/logger.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';
import 'package:intellibra/src/features/home/domain/usecases/get_local_articles.dart';
import 'package:intellibra/src/features/home/domain/usecases/get_remote_articles.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getLocalArticles,
    this._getRemoteArticles,
  ) : super(HomeInitial());
  final GetLocalArticles _getLocalArticles;
  final GetRemoteArticles _getRemoteArticles;

  Future<void> getRemoteArticles(int limit, int offset, String type) async {
    emit(HomeRemoteArticleFechtching());
    final result = await _getRemoteArticles(
      GetRemoteArticlesParams(limit, offset, type),
    );
    result.fold(
      (failure) => emit(
        HomeRemoteArticleFetchFailure(errorMessage: failure.errorMessage),
      ),
      (posts) => emit(
        HomeRemoteArticleFetched(
          recentArticles: posts.recentArticles,
          recomndedArticles: posts.recommendedArticles,
          popularArticles: posts.popularArticles,
        ),
      ),
    );
  }

  Future<void> getLocalArticles(String type) async {
    emit(HomeLocalArticleFechtching());
    final result = await _getLocalArticles(
      const GetLocalArticlesParams(ArticlesEnum.All),
    );
    result.fold(
      (failure) => emit(
        HomeLocalArticleFetchFailure(errorMessage: failure.errorMessage),
      ),
      (posts) => emit(
        HomeLocalArticleFetched(
          recentArticles: posts.recentArticles,
          recomndedArticles: posts.recommendedArticles,
          popularArticles: posts.popularArticles,
        ),
      ),
    );
  }
}
