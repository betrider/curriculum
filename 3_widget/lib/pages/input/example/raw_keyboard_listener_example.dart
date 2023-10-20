import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyboardListenerExample extends StatefulWidget {
  const RawKeyboardListenerExample({super.key});

  @override
  RawKeyboardListenerExampleState createState() => RawKeyboardListenerExampleState();
}

class RawKeyboardListenerExampleState extends State<RawKeyboardListenerExample> {
  String keyPressed = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (RawKeyEvent event) {
          setState(() {
            if (event is RawKeyDownEvent) {
              final logicalKey = event.data.logicalKey;
              keyPressed = logicalKey.keyLabel;
            }
          });
        },
        child: const Center(
          child: Text(
            'Press any key',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
