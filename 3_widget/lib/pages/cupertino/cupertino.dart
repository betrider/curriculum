import 'package:flutter/material.dart';

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('쿠퍼티노(IOS)'),
        centerTitle: true,
      ),
    );
  }
}