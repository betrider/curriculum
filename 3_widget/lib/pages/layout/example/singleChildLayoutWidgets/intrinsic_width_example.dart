import 'package:flutter/material.dart';

class IntrinsicWidthExample extends StatelessWidget {
  const IntrinsicWidthExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntrinsicWidthExample'),
        centerTitle: true,
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  width: 300,
                  height: 200,
                ),
                Container(
                  color: Colors.green,
                  width: 150,
                  height: 50,
                ),
                Container(
                  color: Colors.orange,
                  width: double.infinity,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
