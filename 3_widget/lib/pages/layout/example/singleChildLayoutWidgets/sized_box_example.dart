import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBoxExample')),
      body: Column(
        children: [
          const SizedBox(
            width: 200.0,
            height: 300.0,
            child: Card(child: Text('Hello World!')),
          ),
          const SizedBox.shrink(),
          const SizedBox.square(),
          const SizedBox.expand(),
          SizedBox.fromSize()
        ],
      ),
    );
  }
}
