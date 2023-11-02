import 'dart:convert';

import 'package:intellibra/src/configs/intellibra_constants.dart';
import 'package:intellibra/src/configs/pink_alert_cache.dart';
import 'package:intellibra/src/core/utils/enums/articles_enum.dart';
import 'package:intellibra/src/core/utils/logger.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';

class LocalArticleDataSource {
  LocalArticleDataSource(this.hiveService);
  final HiveService<String> hiveService;

  Future<void> writePosts(
    List<PostModel> posts,
  ) async {
    final jsonData = posts.map((post) => post.toJson()).toList();
    final jsonString = jsonEncode(jsonData);
    await hiveService.write(
      ArticlesEnum.All.name,
      jsonString,
      Constants.localDatabaseArticleName,
    );
  }

  Future<List<PostModel>> readPosts() async {
    final data = await hiveService.read(
      ArticlesEnum.All.name,
      Constants.localDatabaseArticleName,
    );

    if (data == null) {
      return [];
    }

    final jsonData = jsonDecode(data);

    final posts = convertDynamicToPostModelList(data);

    logI('the data from hive: $data');
    return posts;
  }
}

List<PostModel> convertDynamicToPostModelList(dynamic data) {
  final jsonData = jsonDecode(data as String);
  final posts = <PostModel>[];

  try {
    for (final post in jsonData as Iterable<dynamic>) {
      logD('post: $post');

      final data = PostModel.fromMap(post as Map<String, dynamic>);
      posts.add(data);
    }
  } on Exception catch (e) {
    logE('Error converting JSON data to PostModel objects: $e');
  }

  return posts;
}
