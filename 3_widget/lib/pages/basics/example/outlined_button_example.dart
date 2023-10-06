import 'package:flutter/material.dart';

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OutlinedButtonExample')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          child: const Text('button'),
        ),
      ),
    );
  }
}
