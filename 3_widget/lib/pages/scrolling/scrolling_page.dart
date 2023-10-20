import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class ScrollingPage extends StatelessWidget {
  const ScrollingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스크롤'),
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
            title: 'DraggableScrollableSheetExample',
            onTap: () {
              context.pushRelative('DraggableScrollableSheetExample');
            },
          ),
          MyCardWidget(
            title: 'GridViewExample',
            onTap: () {
              context.pushRelative('GridViewExample');
            },
          ),
          MyCardWidget(
            title: 'ListViewExample',
            onTap: () {
              context.pushRelative('ListViewExample');
            },
          ),
          MyCardWidget(
            title: 'NestedScrollViewExample',
            onTap: () {
              context.pushRelative('NestedScrollViewExample');
            },
          ),
          MyCardWidget(
            title: 'NotificationListenerExample',
            onTap: () {
              context.pushRelative('NotificationListenerExample');
            },
          ),
          MyCardWidget(
            title: 'PageViewExample',
            onTap: () {
              context.pushRelative('PageViewExample');
            },
          ),
          MyCardWidget(
            title: 'RefreshIndicatorExample',
            onTap: () {
              context.pushRelative('RefreshIndicatorExample');
            },
          ),
          MyCardWidget(
            title: 'ReorderableExample',
            onTap: () {
              context.pushRelative('ReorderableExample');
            },
          ),
          MyCardWidget(
            title: 'ScrollConfigurationExample',
            onTap: () {
              context.pushRelative('ScrollConfigurationExample');
            },
          ),
          MyCardWidget(
            title: 'ScrollableExample',
            onTap: () {
              context.pushRelative('ScrollableExample');
            },
          ),
          MyCardWidget(
            title: 'ScrollbarExample',
            onTap: () {
              context.pushRelative('ScrollbarExample');
            },
          ),
          MyCardWidget(
            title: 'SingleChildScrollViewExample',
            onTap: () {
              context.pushRelative('SingleChildScrollViewExample');
            },
          ),
        ],
      ),
    );
  }
}
