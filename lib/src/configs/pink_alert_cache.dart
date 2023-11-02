import 'package:hive_flutter/hive_flutter.dart';
import 'package:intellibra/src/core/utils/logger.dart';

class HiveService<T> {
  Future<Box<T>> _getBox(String boxName) async {
    final box = await Hive.openBox<T>(boxName);
    return box;
  }

  Future<void> write(String key, T value, String boxName) async {
    final box = await _getBox(boxName);
    await box.put(key, value);
    logI('the data to hive $value');
  }

  Future<T?> read(String key, String boxName) async {
    final box = await _getBox(boxName);
    return box.get(key);
  }

  Future<void> delete(String key, String boxName) async {
    final box = await _getBox(boxName);
    await box.delete(key);
  }

  Future<void> clear(String boxName) async {
    final box = await _getBox(boxName);
    await box.clear();
  }
}
