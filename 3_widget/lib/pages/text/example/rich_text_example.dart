import 'package:flutter/material.dart';

/// RichText 위젯은 다양한 스타일을 사용하는 텍스트를 표시합니다. 표시할 텍스트는 TextSpan 개체 트리를 사용하여 설명됩니다. 각 개체는 다음과 같습니다.
class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RichTextExample'),
        centerTitle: true,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' world!'),
            ],
          ),
        ),
      ),
    );
  }
}
