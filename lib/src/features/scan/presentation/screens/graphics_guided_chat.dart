import 'package:flutter/material.dart';
import 'package:intellibra/src/features/scan/data/graphics_steps_mock_data.dart';

class BreastCancerGraphicsSelfCheckPage extends StatefulWidget {
  const BreastCancerGraphicsSelfCheckPage({super.key});

  @override
  State<BreastCancerGraphicsSelfCheckPage> createState() =>
      _BreastCancerGraphicsSelfCheckPageState();
}

class _BreastCancerGraphicsSelfCheckPageState
    extends State<BreastCancerGraphicsSelfCheckPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breast Cancer Self-Check'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Performing a Breast Self-Check',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Follow these steps to perform a breast self-check:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Stepper(
                steps: steps,
                currentStep: _index,
                onStepTapped: (value) {
                  setState(() {
                    _index = value;
                  });
                },
                onStepCancel: () {
                  if (_index > 0) {
                    setState(() {
                      _index -= 1;
                    });
                  }
                },
                onStepContinue: () {
                  if (_index < 5) {
                    setState(() {
                      _index += 1;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
