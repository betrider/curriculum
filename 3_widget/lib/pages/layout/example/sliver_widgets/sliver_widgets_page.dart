import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class SliverWidgetsPage extends StatelessWidget {
  const SliverWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverWidgets'),
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
            title: 'CustomScrollViewExample',
            onTap: () {
              context.pushRelative('CustomScrollViewExample');
            },
          ),
          MyCardWidget(
            title: 'NestedScrollViewExample',
            onTap: () {
              context.pushRelative('NestedScrollViewExample');
            },
          ),
          MyCardWidget(
            title: 'NestedScrollViewExample2',
            onTap: () {
              context.pushRelative('NestedScrollViewExample2');
            },
          ),
        ],
      ),
    );
  }
}