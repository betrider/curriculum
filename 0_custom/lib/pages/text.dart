import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/components/separated_column.dart';

class TextPage extends StatelessWidget {
  static const routeName = 'text';
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButtonPage'),
      ),
      body: Theme(
        data: ThemeData(
          textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 100),
            headlineMedium: TextStyle(fontSize: 100),
            headlineSmall: TextStyle(fontSize: 100),
            bodyLarge: TextStyle(fontSize: 100),
            bodyMedium: TextStyle(fontSize: 100),
            bodySmall: TextStyle(fontSize: 100),
            displayLarge: TextStyle(fontSize: 100),
            displayMedium: TextStyle(fontSize: 100),
            displaySmall: TextStyle(fontSize: 100),
            labelLarge: TextStyle(fontSize: 100),
            labelMedium: TextStyle(fontSize: 100),
            labelSmall: TextStyle(fontSize: 100),
            titleLarge: TextStyle(fontSize: 100),
            titleMedium: TextStyle(fontSize: 100),
            titleSmall: TextStyle(fontSize: 100),
          ),
        ),
        child: Builder(builder: (context) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: SeparatedColumn(
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                mainAxisSize: MainAxisSize.min,
                children: [
                  // DefaultTextStyle 을 기본으로 명시적 적용.
                  RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      children: [
                        const TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                        const TextSpan(text: ' world!'),
                        const TextSpan(text: ' - '),
                        TextSpan(
                          text: 'link',
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blueAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('asdf');
                            },
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  // style 이 생략되어 DefaultTextStyle 이 적용.
                  Text.rich(
                    TextSpan(
                      text: '12. text rich ',
                      children: [
                        const TextSpan(text: ' with '),
                        const WidgetSpan(
                          child: Icon(Icons.star, size: 16),
                        ),
                        const TextSpan(text: 'TextStyle.'),
                        const TextSpan(text: ' - '),
                        TextSpan(
                          text: 'link',
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blueAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('asdf');
                            },
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  EasyRichText(
                    "I want blue font. I want bold font. I want italic font.",
                    patternList: const [
                      EasyRichTextPattern(
                        targetString: 'blue',
                        style: TextStyle(color: Colors.blue),
                      ),
                      EasyRichTextPattern(
                        targetString: 'bold',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      EasyRichTextPattern(
                        targetString: 'italic',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
