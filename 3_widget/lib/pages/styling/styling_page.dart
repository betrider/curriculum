import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class StylingPage extends StatelessWidget {
  const StylingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스타일'),
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
            title: 'MediaQueryExample',
            onTap: () {
              context.pushRelative('MediaQueryExample');
            },
          ),
          MyCardWidget(
            title: 'PaddingExample',
            onTap: () {
              context.pushRelative('PaddingExample');
            },
          ),
          MyCardWidget(
            title: 'ThemeExample',
            onTap: () {
              context.pushRelative('ThemeExample');
            },
          ),
        ],
      ),
    );
  }
}