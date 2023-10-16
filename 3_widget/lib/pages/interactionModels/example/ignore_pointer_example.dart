import 'package:flutter/material.dart';

class IgnorePointerExample extends StatefulWidget {
  const IgnorePointerExample({super.key});

  @override
  State<IgnorePointerExample> createState() => _IgnorePointerExampleState();
}

class _IgnorePointerExampleState extends State<IgnorePointerExample> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Ignoring: $ignoring'),
        IgnorePointer(
          ignoring: ignoring,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(24.0),
            ),
            onPressed: () {},
            child: const Text('Click me!'),
          ),
        ),
        FilledButton(
          onPressed: () {
            setIgnoring(!ignoring);
          },
          child: Text(
            ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
          ),
        ),
      ],
    );
  }
}
