import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollableExample extends StatelessWidget {
  const ScrollableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollableExample')),
      body: Scrollable(
        viewportBuilder: (BuildContext context, ViewportOffset position) {
          return Column(
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                color: Colors.purple,
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                color: Colors.purple,
              ),
            ],
          );
        },
      ),
    );
  }
}
