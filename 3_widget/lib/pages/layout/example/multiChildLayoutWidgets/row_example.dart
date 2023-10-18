import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RowExample'),
        centerTitle: true,
      ),
      body: const Center(
        child: Row(
          children: <Widget>[
            FlutterLogo(),
            Expanded(
              child: Text(
                  "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
            ),
            Icon(Icons.sentiment_very_satisfied),
          ],
        ),
      ),
    );
  }
}
