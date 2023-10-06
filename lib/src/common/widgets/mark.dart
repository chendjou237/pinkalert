import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibra/src/configs/configs.dart';

class TradeMark extends StatelessWidget {
  const TradeMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pink',
                style: TextStyle(
                  color: Palette.secondaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Alert',
                style: GoogleFonts.besley(
                  color: Palette.primary,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Text(
            'v1.0.0',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
