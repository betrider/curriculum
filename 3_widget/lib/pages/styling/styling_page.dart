import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'styling.dart';

class StylingPage extends StatelessWidget {
  const StylingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스타일링'),
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
            title: (MediaQueryExample).name,
            onTap: () {
              context.pushRelative((MediaQueryExample).name);
            },
          ),
          MyCardWidget(
            title: (PaddingExample).name,
            onTap: () {
              context.pushRelative((PaddingExample).name);
            },
          ),
          MyCardWidget(
            title: (ThemeExample).name,
            onTap: () {
              context.pushRelative((ThemeExample).name);
            },
          ),
        ],
      ),
    );
  }
}