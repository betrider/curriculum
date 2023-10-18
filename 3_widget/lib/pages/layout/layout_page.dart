import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

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
            title: 'MultiChildLayoutWidgets',
            onTap: () {
              context.pushRelative('MultiChildLayoutWidgets');
            },
          ),
          MyCardWidget(
            title: 'SingleChildLayoutWidgets',
            onTap: () {
              context.pushRelative('SingleChildLayoutWidgets');
            },
          ),
          MyCardWidget(
            title: 'SliverWidgets',
            onTap: () {
              context.pushRelative('SliverWidgets');
            },
          ),
        ],
      ),
    );
  }
}