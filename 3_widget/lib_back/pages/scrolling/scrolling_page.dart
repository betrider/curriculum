import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

import 'scrolling.dart';

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
            title: (CustomScrollViewExample).name,
            onTap: () {
              context.pushRelative((CustomScrollViewExample).name);
            },
          ),
          MyCardWidget(
            title: (DraggableScrollableSheetExample).name,
            onTap: () {
              context.pushRelative((DraggableScrollableSheetExample).name);
            },
          ),
          MyCardWidget(
            title: (GridViewExample).name,
            onTap: () {
              context.pushRelative((GridViewExample).name);
            },
          ),
          MyCardWidget(
            title: (ListViewExample).name,
            onTap: () {
              context.pushRelative((ListViewExample).name);
            },
          ),
          MyCardWidget(
            title: (NestedScrollViewExample).name,
            onTap: () {
              context.pushRelative((NestedScrollViewExample).name);
            },
          ),
          MyCardWidget(
            title: (NotificationListenerExample).name,
            onTap: () {
              context.pushRelative((NotificationListenerExample).name);
            },
          ),
          MyCardWidget(
            title: (PageViewExample).name,
            onTap: () {
              context.pushRelative((PageViewExample).name);
            },
          ),
          MyCardWidget(
            title: (RefreshIndicatorExample).name,
            onTap: () {
              context.pushRelative((RefreshIndicatorExample).name);
            },
          ),
          MyCardWidget(
            title: (ReorderableListViewExample).name,
            onTap: () {
              context.pushRelative((ReorderableListViewExample).name);
            },
          ),
          MyCardWidget(
            title: (ScrollConfigurationExample).name,
            onTap: () {
              context.pushRelative((ScrollConfigurationExample).name);
            },
          ),
          MyCardWidget(
            title: (ScrollableExample).name,
            onTap: () {
              context.pushRelative((ScrollableExample).name);
            },
          ),
          MyCardWidget(
            title: (ScrollbarExample).name,
            onTap: () {
              context.pushRelative((ScrollbarExample).name);
            },
          ),
          MyCardWidget(
            title: (SingleChildScrollViewExample).name,
            onTap: () {
              context.pushRelative((SingleChildScrollViewExample).name);
            },
          ),
        ],
      ),
    );
  }
}
