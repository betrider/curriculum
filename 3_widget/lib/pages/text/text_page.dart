import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class TextPage extends StatelessWidget {
  const TextPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('텍스트'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          MyCardWidget(
            title: 'DefaultTextStyleExample',
            onTap: () {
              context.pushRelative('DefaultTextStyleExample');
            },
          ),
          MyCardWidget(
            title: 'RichTextExample',
            onTap: () {
              context.pushRelative('RichTextExample');
            },
          ),
          MyCardWidget(
            title: 'TextExample',
            onTap: () {
              context.pushRelative('TextExample');
            },
          ),
        ],
      ),
    );
  }
}
