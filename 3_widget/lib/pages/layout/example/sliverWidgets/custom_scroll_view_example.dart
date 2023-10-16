import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomScrollViewExample')),
      body: CustomScrollView(
        slivers: [
          // 1.SliverAppBar
          const SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceWidget(),
            // flexibleSpace: FlexibleSpaceBar(
            //   background: Image.network(
            //     'https://cdn.pixabay.com/photo/2016/09/30/14/56/venetian-1705528_960_720.jpg',
            //     fit: BoxFit.cover,
            //   ),
            //   collapseMode: CollapseMode.none,
            // ),
            expandedHeight: 200,
          ),

          // 2.SliverPersistentHeader()
          SliverPersistentHeader(
            pinned: false,
            delegate: NewSliverPersistentHeaderDelegate(
              widget: Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  'SliverPersistentHeader',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),

          // 3.SliverList()
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (index) => Card(
                  color: Colors.teal[100 * (index % 9)],
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Text('Sample $index'),
                  ),
                ),
              ),
            ),
          ),

          // 4.SliverToBoxAdapter()
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const SizedBox(
                      width: 100.0,
                      child: Card(
                        child: Center(child: Text('card')),
                      ),
                    );
                  }),
            ),
          ),

          // 5.SliverGrid()
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0, // Grid view 너비
              mainAxisSpacing: 10.0, // 행 간 거리
              crossAxisSpacing: 10.0, // 열 간 거리
            ),
            // 화면에 표시될 위젯을 설정
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(
                    'Grid Item $index',
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              },
              childCount: 10,
            ),
          ),

          // 6.SliverFillRemaining()
          SliverFillRemaining(
            child: LayoutBuilder(
              builder: (context, boxConstraints) {
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("SliberAppBody"),
                        Text("size:${boxConstraints.maxHeight}"),
                        Text("size:${boxConstraints.maxWidth}"),
                        const Divider(),
                        const Text("MediaQuery"),
                        Text("size:${MediaQuery.of(context).size.width}"),
                        Text("size:${MediaQuery.of(context).size.height}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  NewSliverPersistentHeaderDelegate({required this.widget});

  Widget widget;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class FlexibleSpaceWidget extends StatelessWidget {
  const FlexibleSpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings!.maxExtent - settings.minExtent;
        final t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent).clamp(0.0, 1.0);
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        if (kDebugMode) {
          print(opacity.toStringAsFixed(3));
        }

        return opacity == 0.0
            ? const FlexibleSpaceBar(title: Text("Custom Scroll View"))
            : Opacity(
                opacity: opacity,
                child: FlexibleSpaceBar(
                  background: Image.network(
                    'https://cdn.pixabay.com/photo/2016/09/30/14/56/venetian-1705528_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
      },
    );
  }
}
