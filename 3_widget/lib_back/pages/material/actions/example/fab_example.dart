import 'package:flutter/material.dart';

class FABExample extends StatelessWidget {
  const FABExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Placeholder(),
      floatingActionButton: FloatingActionButton(
        child: const Text('Action'),
        onPressed: () {},
      ),
    );
  }
}
