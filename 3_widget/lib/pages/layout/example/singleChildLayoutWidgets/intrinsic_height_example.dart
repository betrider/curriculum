import 'package:flutter/material.dart';

class IntrinsicHeightExample extends StatelessWidget {
  const IntrinsicHeightExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IntrinsicHeightExample')),
      body: Center(
        child: IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 200,
                ),
                Container(
                  color: Colors.green,
                  width: 150,
                  height: 50,
                ),
                Container(
                  color: Colors.orange,
                  width: 100,
                  height: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
