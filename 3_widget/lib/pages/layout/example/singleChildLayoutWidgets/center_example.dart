import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CenterExample'),
        centerTitle: true,
      ),
      body: const Center(
        // heightFactor: 1,
        // widthFactor: 1,
        child: SizedBox(
          width: 200,
          height: 200,
          child: Placeholder(),
        ),
      ),
    );
  }
}
