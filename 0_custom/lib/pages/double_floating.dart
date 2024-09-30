import 'package:flutter/material.dart';

class DoubleFloatingPage extends StatelessWidget {
  static const routeName = 'double-floating';
  const DoubleFloatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselPage'),
      ),
      body: Container(
        color: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {},
              child: const Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {},
              child: const Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }
}
