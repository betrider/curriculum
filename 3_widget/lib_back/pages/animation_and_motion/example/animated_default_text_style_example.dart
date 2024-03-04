import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({Key? key}) : super(key: key);

  @override
  AnimatedDefaultTextStyleExampleState createState() => AnimatedDefaultTextStyleExampleState();
}

class AnimatedDefaultTextStyleExampleState extends State<AnimatedDefaultTextStyleExample> {
  bool _first = true;
  double _fontSize = 40;
  Color _color = Colors.cyan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 210,
              child: AnimatedDefaultTextStyle(
                curve: Curves.bounceOut,
                duration: const Duration(milliseconds: 350),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Column(
                  children: [
                    FlutterLogo(),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Flutter Dev's"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _fontSize = _first ? 60 : 40;
                    _color = _first ? Colors.blue : Colors.brown;
                    _first = !_first;
                  });
                },
                child: const Text(
                  "Click Here!!",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
