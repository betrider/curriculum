import 'package:flutter/material.dart';

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChipExample'),
        centerTitle: true,
      ),
      body: Center(
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: const Text('AB'),
          ),
          label: const Text('Aaron Burr'),
        ),
      ),
    );
  }
}
