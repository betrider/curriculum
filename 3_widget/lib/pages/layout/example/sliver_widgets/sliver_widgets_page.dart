import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'sliver_widgets.dart';

class SliverWidgetsPage extends StatelessWidget {
  const SliverWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('조각 위젯'),
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
            title: (CustomScrollViewExample).name,
            onTap: () {
              context.pushRelative((CustomScrollViewExample).name);
            },
          ),
          MyCardWidget(
            title: (NestedScrollViewExample).name,
            onTap: () {
              context.pushRelative((NestedScrollViewExample).name);
            },
          ),
          MyCardWidget(
            title: (NestedScrollViewExample2).name,
            onTap: () {
              context.pushRelative((NestedScrollViewExample2).name);
            },
          ),
        ],
      ),
    );
  }
}