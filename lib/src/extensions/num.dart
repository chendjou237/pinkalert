import 'package:flutter/material.dart';

extension IntellibraNumExtensions on num {
  /// Extension methods for [num] to convert to [Gap].

  SizedBox get vGap => SizedBox(height: toDouble());
  SizedBox get hGap => SizedBox(width: toDouble());
}
