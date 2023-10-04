import 'package:flutter/material.dart';

class ScrollingWidget extends StatelessWidget {
  const ScrollingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스크롤'),
        centerTitle: true,
      ),
    );
  }
}