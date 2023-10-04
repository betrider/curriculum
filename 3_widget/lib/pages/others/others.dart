import 'package:flutter/material.dart';

class OthersWidget extends StatelessWidget {
  const OthersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기타'),
        centerTitle: true,
      ),
    );
  }
}