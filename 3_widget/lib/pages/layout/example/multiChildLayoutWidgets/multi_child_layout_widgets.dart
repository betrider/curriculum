import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class MultiChildLayoutWidgets extends StatelessWidget {
  const MultiChildLayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiChildLayoutWidgets'),
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
            title: 'ColumnExample',
            onTap: () {
              context.pushRelative('ColumnExample');
            },
          ),
          MyCardWidget(
            title: 'CustomMultiChildLayoutExample',
            onTap: () {
              context.pushRelative('CustomMultiChildLayoutExample');
            },
          ),
          MyCardWidget(
            title: 'FlowExample',
            onTap: () {
              context.pushRelative('FlowExample');
            },
          ),
          MyCardWidget(
            title: 'GridViewExample',
            onTap: () {
              context.pushRelative('GridViewExample');
            },
          ),
          MyCardWidget(
            title: 'IndexedStackExample',
            onTap: () {
              context.pushRelative('IndexedStackExample');
            },
          ),
          MyCardWidget(
            title: 'LayoutBuilderExample',
            onTap: () {
              context.pushRelative('LayoutBuilderExample');
            },
          ),
          MyCardWidget(
            title: 'ListViewExample',
            onTap: () {
              context.pushRelative('ListViewExample');
            },
          ),
          MyCardWidget(
            title: 'RowExample',
            onTap: () {
              context.pushRelative('RowExample');
            },
          ),
          MyCardWidget(
            title: 'StackExample',
            onTap: () {
              context.pushRelative('StackExample');
            },
          ),
          MyCardWidget(
            title: 'TableExample',
            onTap: () {
              context.pushRelative('TableExample');
            },
          ),
          MyCardWidget(
            title: 'WrapExample',
            onTap: () {
              context.pushRelative('WrapExample');
            },
          ),
        ],
      ),
    );
  }
}
