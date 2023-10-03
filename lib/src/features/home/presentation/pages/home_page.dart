import 'package:flutter/material.dart';
import 'package:intellibra/src/configs/intellibra_constants.dart';
import 'package:intellibra/src/extensions/num.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.appName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            32.vGap,
            const Text(
              'Welcome to ${Constants.appName}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            16.vGap,
            const Text(
              '''You understand that everyday count when it comes to early breast cancer detection. it's great that you take responsibility for your health and check your breasts reguarly. We're here to help you with that.''',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),

            32.vGap,

            
          ],
        ),
      ),
    );
  }
}
