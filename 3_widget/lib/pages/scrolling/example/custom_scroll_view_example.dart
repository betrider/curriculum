import 'package:flutter/material.dart';

/// Sliver를 사용하여 사용자 정의 스크롤 효과를 만드는 ScrollView입니다.
/// 
/// * 자주 사용하는 옵션
/// 1. pinned - true 면 스크롤 했을때 따라 올라가다가 상단에 고정 
/// 2. floating - true 스크롤 중간에서 스크롤 했을때 표시하려는 경우
/// 
/// 
/// * CollapseMode 옵션
/// 1. CollapseMode.none - 접힐때 아무효과 없음
/// 2. CollapseMode.pin - 접힐때 고정으로 올라감
/// 3. CollapseMode.parallax - 접힐때 축소되면서 올라감
class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomScrollViewExample')),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
