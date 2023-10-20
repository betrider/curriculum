import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class AccessibilityPage extends StatelessWidget {
  const AccessibilityPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주석'),
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
            title: '의미 제외',
            onTap: () {
              context.pushRelative('ExcludeSemanticsExample');
            },
          ),
          MyCardWidget(
            title: '의미 병합',
            onTap: () {
              context.pushRelative('MergeSemanticsExample');
            },
          ),
          MyCardWidget(
            title: '의미',
            onTap: () {
              context.pushRelative('SemanticsExample');
            },
          ),
        ],
      ),
    );
  }
}
