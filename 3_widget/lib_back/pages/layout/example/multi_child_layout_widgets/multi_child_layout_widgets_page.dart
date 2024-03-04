import 'package:flutter/material.dart';
import '../../../../../lib_back/extensions.dart';
import '../../../../../lib_back/main.dart';

import 'multi_child_layout_widgets.dart';

class MultiChildLayoutWidgetsPage extends StatelessWidget {
  const MultiChildLayoutWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('다중 위젯'),
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
            title: (ColumnExample).name,
            onTap: () {
              context.pushRelative((ColumnExample).name,);
            },
          ),
          MyCardWidget(
            title: (CustomMultiChildLayoutExample).name,
            onTap: () {
              context.pushRelative((CustomMultiChildLayoutExample).name,);
            },
          ),
          MyCardWidget(
            title: (FlowExample).name,
            onTap: () {
              context.pushRelative((FlowExample).name,);
            },
          ),
          MyCardWidget(
            title: (GridViewExample).name,
            onTap: () {
              context.pushRelative((GridViewExample).name,);
            },
          ),
          MyCardWidget(
            title: (IndexedStackExample).name,
            onTap: () {
              context.pushRelative((IndexedStackExample).name,);
            },
          ),
          MyCardWidget(
            title: (LayoutBuilderExample).name,
            onTap: () {
              context.pushRelative((LayoutBuilderExample).name,);
            },
          ),
          MyCardWidget(
            title: (ListViewExample).name,
            onTap: () {
              context.pushRelative((ListViewExample).name,);
            },
          ),
          MyCardWidget(
            title: (RowExample).name,
            onTap: () {
              context.pushRelative((RowExample).name,);
            },
          ),
          MyCardWidget(
            title: (StackExample).name,
            onTap: () {
              context.pushRelative((StackExample).name,);
            },
          ),
          MyCardWidget(
            title: (TableExample).name,
            onTap: () {
              context.pushRelative((TableExample).name,);
            },
          ),
          MyCardWidget(
            title: (WrapExample).name,
            onTap: () {
              context.pushRelative((WrapExample).name,);
            },
          ),
        ],
      ),
    );
  }
}
