import 'package:flutter/material.dart';

class FlutterLogoExample extends StatelessWidget {
  const FlutterLogoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FlutterLogoExample')),
      body: const Center(child: FlutterLogo()),
    );
  }
}