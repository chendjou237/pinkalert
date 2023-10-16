import 'package:hive_flutter/hive_flutter.dart';

class PinkAlertCache {
  late final box;
  static Future<void> _getBox(String name) async {
    await Hive.initFlutter();
    await Hive.openBox(name);
  }
}
