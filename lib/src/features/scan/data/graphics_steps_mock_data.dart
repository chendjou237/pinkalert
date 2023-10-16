import 'package:flutter/material.dart';

final List<Step> steps = [
  Step(
    title: const Text('Step 1'),
    content: Column(
      children: [
        Image.network('https://picsum.photos/200/300'),
        const SizedBox(height: 16),
        const Text('Description of step 1...'),
      ],
    ),
  ),
  Step(
    title: const Text('Step 2'),
    content: Column(
      children: [
        Image.network('https://picsum.photos/200/300'),
        const SizedBox(height: 16),
        const Text('Description of step 2...'),
      ],
    ),
  ),
  Step(
    title: const Text('Step 3'),
    content: Column(
      children: [
        Image.network('https://picsum.photos/200/300'),
        const SizedBox(height: 16),
        const Text('Description of step 3...'),
      ],
    ),
  ),
  Step(
    title: const Text('Step 4'),
    content: Column(
      children: [
        Image.network('https://picsum.photos/200/300'),
        const SizedBox(height: 16),
        const Text('Description of step 4...'),
      ],
    ),
  ),
  Step(
    title: const Text('Step 5'),
    content: Column(
      children: [
        Image.network('https://picsum.photos/200/300'),
        const SizedBox(height: 16),
        const Text('Description of step 5...'),
      ],
    ),
  ),
];
