import 'package:flutter/material.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({
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