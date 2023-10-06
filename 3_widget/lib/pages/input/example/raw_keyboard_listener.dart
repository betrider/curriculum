import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardListenerExample extends StatefulWidget {
  const KeyboardListenerExample({super.key});

  @override
  KeyboardListenerExampleState createState() => KeyboardListenerExampleState();
}

class KeyboardListenerExampleState extends State<KeyboardListenerExample> {
  String keyPressed = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KeyboardListenerExample')),
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
