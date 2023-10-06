import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextExample')),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Hello How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            /// Text의 기본 스타일이 적용되어있음
            const Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            /// 기본 스타일이 적용되지 않음
            RichText(
              text: TextSpan(
                text: 'Hello', // 기본 텍스트 스타일
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
