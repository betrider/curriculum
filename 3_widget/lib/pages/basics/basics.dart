import 'package:flutter/material.dart';

class BasicsWidget extends StatelessWidget {
  const BasicsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기초'),
        centerTitle: true,
      ),
    );
  }
}