import 'package:flutter/material.dart';

class AsyncWidget extends StatelessWidget {
  const AsyncWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비동기'),
        centerTitle: true,
      ),
    );
  }
}