import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collectX/src/utils/palette.dart';
import 'package:collectX/src/utils/text_styles.dart';

class Records extends ConsumerWidget {
  const Records({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
        child: Text(
          'Records',
          style: TextStyles.designText(
              bold: true, color: Palette.primary, size: 18),
        ),
      ),
    );
  }
}
