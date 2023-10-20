import 'package:hive_flutter/hive_flutter.dart';

class HiveService<T> {
  HiveService(this.boxName);
  final String boxName;

  Future<Box<T>> _getBox() async {
    final box =  Hive.box<T>(boxName);
    return box;
    
  }

  Future<void> write(String key, T value) async {
    final box = await _getBox();
    await box.put(key, value);
  }

  Future<T?> read(String key) async {
    final box = await _getBox();
    return box.get(key);
  }

  Future<void> delete(String key) async {
    final box = await _getBox();
    await box.delete(key);
  }

  Future<void> clear() async {
    final box = await _getBox();
    await box.clear();
  }
}
