import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [],
        ),
      ),
    );
  }
}
