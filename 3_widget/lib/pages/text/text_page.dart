import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';
import 'package:flutter_widget/pages/basics/example/text_example.dart';
import 'package:flutter_widget/pages/text/example/default_text_style_example.dart';
import 'package:flutter_widget/pages/text/example/rich_text_example.dart';

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
            title: (DefaultTextStyleExample).name,
            onTap: () {
              context.pushRelative((DefaultTextStyleExample).name);
            },
          ),
          MyCardWidget(
            title: (RichTextExample).name,
            onTap: () {
              context.pushRelative((RichTextExample).name);
            },
          ),
          MyCardWidget(
            title: (TextExample).name,
            onTap: () {
              context.pushRelative((TextExample).name);
            },
          ),
        ],
      ),
    );
  }
}
