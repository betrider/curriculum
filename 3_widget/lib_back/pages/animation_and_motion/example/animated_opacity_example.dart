import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => AnimatedOpacityExampleState();
}

class AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(),
          ),
          ElevatedButton(
            onPressed: _changeOpacity,
            child: const Text('Fade Logo'),
          ),
        ],
      ),
    );
  }
}
