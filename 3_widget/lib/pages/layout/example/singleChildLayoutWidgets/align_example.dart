import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlignExample'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: const Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
