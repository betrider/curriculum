import 'package:flutter/material.dart';

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextButtonExample')),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('button'),
        ),
      ),
    );
  }
}
