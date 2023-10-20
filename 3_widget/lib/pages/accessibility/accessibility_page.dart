import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'accessibility.dart';

class AccessibilityPage extends StatelessWidget {
  const AccessibilityPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('접근성'),
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
            title: (ExcludeSemanticsExample).name,
            onTap: () {
              context.pushRelative((ExcludeSemanticsExample).name);
            },
          ),
          MyCardWidget(
            title: (MergeSemanticsExample).name,
            onTap: () {
              context.pushRelative((MergeSemanticsExample).name);
            },
          ),
          MyCardWidget(
            title: (SemanticsExample).name,
            onTap: () {
              context.pushRelative((SemanticsExample).name);
            },
          ),
        ],
      ),
    );
  }
}
