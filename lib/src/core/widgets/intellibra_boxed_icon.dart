import 'package:flutter/material.dart';
import 'package:intellibra/src/configs/palette.dart';

class IntellibraBoxedIcon extends StatelessWidget {
  const IntellibraBoxedIcon({
    required this.icon,
    this.color = Palette.primary,
    super.key,
    this.action,
  });
  final VoidCallback? action;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(
              icon,
            ),
          ),
        ),
      ),
    );
  }
}
