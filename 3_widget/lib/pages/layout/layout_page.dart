import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
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
              context.pushRelative('multi_child_layout_widgets');
            },
          ),
          MyCardWidget(
            title: 'SingleChildLayoutWidgets',
            onTap: () {
              context.pushRelative('single_child_layout_widgets');
            },
          ),
          MyCardWidget(
            title: 'SliverWidgets',
            onTap: () {
              context.pushRelative('sliver_widgets');
            },
          ),
        ],
      ),
    );
  }
}