import 'package:logger/logger.dart';

void logD(String? message) {
  final logger = Logger();
  logger.d(message);
}

void logI(String? message) {
  final logger = Logger();
  logger.i(message);
}

void logW(String? message) {
  final logger = Logger();
  logger.w(message);
}

void logE(String? message) {
  final logger = Logger();
  logger.e(message);
}
