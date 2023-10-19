import 'package:flutter/material.dart';

class OverflowBoxExample extends StatelessWidget {
  const OverflowBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.black38,
          child: OverflowBox(
            maxWidth: 400,
            minHeight: 10,
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Overflow box'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
