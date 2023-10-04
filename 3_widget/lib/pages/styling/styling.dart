import 'package:flutter/material.dart';

class StylingWidget extends StatelessWidget {
  const StylingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스타일'),
        centerTitle: true,
      ),
    );
  }
}