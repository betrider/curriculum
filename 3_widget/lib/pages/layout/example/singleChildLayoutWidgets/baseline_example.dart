import 'package:flutter/material.dart';

class BaselineExample extends StatelessWidget {
  const BaselineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BaselineExample')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Baseline(
            baseline: 25,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
