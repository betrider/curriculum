import 'package:flutter/material.dart';

class NestedScrollViewExample2 extends StatelessWidget {
  const NestedScrollViewExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['Tab 1', 'Tab 2'];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            // A flexible app bar
            SliverAppBar(
              title: const Text('Books'),
              pinned: true,
              expandedHeight: 150.0,
              bottom: TabBar(
                tabs: tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
            // Uses the remaining space
            SliverFillRemaining(
              // Renders a scrollable list
              child: TabBarView(
                children: tabs.map((String name) {
                  return SafeArea(
                    top: false,
                    bottom: false,
                    child: Builder(
                      builder: (BuildContext context) {
                        return CustomScrollView(
                          key: PageStorageKey<String>(name),
                          slivers: <Widget>[
                            SliverPadding(
                              padding: const EdgeInsets.all(8.0),
                              sliver: SliverFixedExtentList(
                                itemExtent: 48.0,
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    return ListTile(
                                      title: Text('Item $index'),
                                    );
                                  },
                                  childCount: 30,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
