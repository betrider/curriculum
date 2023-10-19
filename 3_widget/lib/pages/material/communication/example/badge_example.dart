import 'package:flutter/material.dart';

class BadgeExample extends StatelessWidget {
  const BadgeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Badge(
          label: Text('5'),
          child: Icon(Icons.notifications),
        ),
      ),
    );
  }
}
