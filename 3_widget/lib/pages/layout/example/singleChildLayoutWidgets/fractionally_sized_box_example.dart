import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.expand(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            alignment: FractionalOffset.center,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 4,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
