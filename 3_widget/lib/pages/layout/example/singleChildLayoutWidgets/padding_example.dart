import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PaddingExample')),
      body: const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
