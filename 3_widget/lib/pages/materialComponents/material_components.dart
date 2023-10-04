import 'package:flutter/material.dart';

class MaterialComponentsWidget extends StatelessWidget {
  const MaterialComponentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('머테리얼(Android)'),
        centerTitle: true,
      ),
    );
  }
}