import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

import 'layout.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('레이아웃 구성'),
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
            title: '다중 위젯',
            onTap: () {
              context.pushRelative((MultiChildLayoutWidgetsPage).name);
            },
          ),
          MyCardWidget(
            title: '단일 위젯',
            onTap: () {
              context.pushRelative((SingleChildLayoutWidgetsPage).name);
            },
          ),
          MyCardWidget(
            title: '조각 위젯',
            onTap: () {
              context.pushRelative((SliverWidgetsPage).name);
            },
          ),
        ],
      ),
    );
  }
}