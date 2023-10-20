import 'package:hive/hive.dart';
import 'package:intellibra/src/configs/pink_alert_cache.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';

class LocalPostDataSource {
  LocalPostDataSource(this.hiveService);
  final HiveService<List<PostModel>> hiveService;

  Future<List<PostModel>> getPosts(int limit, int offset, String ) async {
    final data = await hiveService.read('');
    final posts = data!.skip(offset).take(limit).toList();
    return posts;
  }

  Future<void> savePosts(List<PostModel> posts, String type) async {
    final box = await hiveService.write(  '', posts);
    
  }
}
