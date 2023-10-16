import 'package:flutter/material.dart';

class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConstrainedBoxExample')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
          // constraints: const BoxConstraints.expand(),
          // constraints: const BoxConstraints.loose(),
          // constraints: const BoxConstraints.tight(),
          // constraints: const BoxConstraints.tightFor(),
          // constraints: const BoxConstraints.tightForFinite(),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Click'),
          ),
        ),
      ),
    );
  }
}
