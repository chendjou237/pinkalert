part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState({
    this.recomndedArticles = const [],
    this.popularArticles = const [],
    this.recentArticles = const [],
    this.errorMessage = '',
  });

  final List<PostModel> recomndedArticles;
  final List<PostModel> popularArticles;
  final List<PostModel> recentArticles;
  final String errorMessage;

  @override
  List<Object> get props =>
      [recomndedArticles, popularArticles, recentArticles];
}

class HomeInitial extends HomeState {}

class HomeRemoteArticleFechtching extends HomeState {}

class HomeRemoteArticleFetched extends HomeState {
  const HomeRemoteArticleFetched({
    super.recomndedArticles,
    super.popularArticles,
    super.recentArticles,
  });
}

class HomeRemoteArticleFetchFailure extends HomeState {
  const HomeRemoteArticleFetchFailure({required this.errorMessage});
  @override
  final String errorMessage;
  @override
  List<Object> get props => [errorMessage];
}

class HomeLocalArticleFechtching extends HomeState {}

class HomeLocalArticleFetched extends HomeState {
  const HomeLocalArticleFetched({
    required super.recomndedArticles,
    required super.popularArticles,
    required super.recentArticles,
  });

  @override
  List<Object> get props =>
      [recomndedArticles, popularArticles, recentArticles];
}

class HomeLocalArticleFetchFailure extends HomeState {
  const HomeLocalArticleFetchFailure({required this.errorMessage});
  @override
  final String errorMessage;
  @override
  List<Object> get props => [errorMessage];
}
