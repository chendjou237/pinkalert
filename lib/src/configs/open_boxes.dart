import 'package:hive_flutter/hive_flutter.dart';
import 'package:intellibra/src/configs/intellibra_constants.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';

Future<void> openBoxes() async {
  await Hive.openBox<List<PostModel>>(Constants.localDatabaseArticleName);
}
