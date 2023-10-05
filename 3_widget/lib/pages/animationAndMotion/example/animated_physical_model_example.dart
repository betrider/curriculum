import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({Key? key}) : super(key: key);

  @override
  AnimatedPhysicalModelExampleState createState() => AnimatedPhysicalModelExampleState();
}

class AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample> {
  bool _play = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPhysicalModelExample')),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(seconds: 1),
          color: _play ? Colors.red : Colors.blue,
          elevation: _play ? 9 : 3,
          shape: BoxShape.rectangle,
          shadowColor: Colors.deepOrangeAccent,
          borderRadius:
              _play ? const BorderRadius.all(Radius.circular(0)) : const BorderRadius.all(Radius.circular(24)),
          child: const SizedBox(
            width: 240,
            height: 240,
            child: Center(
                child: Text(
              'AnimatedPhysicalModel',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _play = !_play;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
