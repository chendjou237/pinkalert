import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:intellibra/src/configs/pink_alert_cache.dart';
import 'package:intellibra/src/features/home/data/datasources/local_data_source.dart';
import 'package:intellibra/src/features/home/data/datasources/remote_data_source.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';
import 'package:intellibra/src/features/home/data/repositories/article_repository_imp.dart';
import 'package:intellibra/src/features/home/domain/repositories/article_repository.dart';
import 'package:intellibra/src/features/home/domain/usecases/get_local_articles.dart';
import 'package:intellibra/src/features/home/domain/usecases/get_remote_articles.dart';
import 'package:intellibra/src/features/home/presentation/cubit/home_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /**
   * !Features
   */

  //Bloc
  sl
    ..registerFactory(() => HomeCubit(sl(), sl()))

    //Use Case
    ..registerLazySingleton(() => GetLocalArticles(sl()))
    ..registerLazySingleton(() => GetRemoteArticles(sl()))

    //repository
    ..registerLazySingleton<ArticleRepository>(
      () => ArticleRepositoryImp(
        sl(),
        sl(),
      ),
    )

    //Data Source
    ..registerLazySingleton(() => RemoteDataSource(sl()))
    ..registerLazySingleton(() => LocalArticleDataSource(sl()))

    /**
   * !Core
   */
    //   ..registerFactory(HiveService.new)
    ..registerFactory(HiveService<String>.new)

    /**
   * !External
   */
    ..registerLazySingleton(() => FirebaseFirestore.instance);
}
