import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
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
