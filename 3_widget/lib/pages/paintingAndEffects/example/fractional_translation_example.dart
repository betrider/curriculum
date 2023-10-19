import 'package:flutter/material.dart';

class FractionalTranslationExample extends StatelessWidget {
  const FractionalTranslationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black26,
          child: const FractionalTranslation(
            translation: Offset(0.5, 1),
            child: Text(
              'flutter',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
