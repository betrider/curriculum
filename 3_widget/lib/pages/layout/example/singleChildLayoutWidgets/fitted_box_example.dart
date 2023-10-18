import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBoxExample'),
        centerTitle: true,
      ),
      body: Container(
        height: 400,
        width: 300,
        color: Colors.blue,
        child: const FittedBox(
          // TRY THIS: Try changing the fit types to see how they change the way
          // the placeholder fits into the container.
          fit: BoxFit.fill,
          child: Placeholder(),
        ),
      ),
    );
  }
}
