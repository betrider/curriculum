import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatioExample'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          width: double.infinity,
          height: 100.0,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
