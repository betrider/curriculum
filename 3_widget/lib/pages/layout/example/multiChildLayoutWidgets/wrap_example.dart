import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
              label: const Text('Laurens'),
            ),
          ],
        ),
      ),
    );
  }
}
