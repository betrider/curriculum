import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LimitedBoxExample'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              LimitedBox(
                maxHeight: 200,
                child: Container(
                  color: i % 2 == 0 ? Colors.red : Colors.blue,
                ),
              )
          ],
        ));
  }
}
