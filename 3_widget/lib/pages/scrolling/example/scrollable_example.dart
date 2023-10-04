import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollableExample extends StatelessWidget {
  const ScrollableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollableExample')),
        body: Scrollable(
      // Scrollable 위젯을 사용하여 스크롤 가능한 컨텐츠를 만듭니다.
      axisDirection: AxisDirection.down, // 스크롤 방향을 설정합니다.
      controller: ScrollController(), // 스크롤 컨트롤러를 지정할 수도 있습니다.
      physics: const BouncingScrollPhysics(), // 스크롤 동작을 설정합니다.
      viewportBuilder: (BuildContext context, ViewportOffset position) {
        // 스크롤 가능한 컨텐츠를 생성합니다.
        return const Column(
          children: <Widget>[
            ListTile(title: Text('항목 1')),
            ListTile(title: Text('항목 2')),
            ListTile(title: Text('항목 3')),
            ListTile(title: Text('항목 4')),
            ListTile(title: Text('항목 5')),
            ListTile(title: Text('항목 6')),
            ListTile(title: Text('항목 7')),
            ListTile(title: Text('항목 8')),
            ListTile(title: Text('항목 9')),
            ListTile(title: Text('항목 10')),
            // 필요한 만큼의 컨텐츠를 추가할 수 있습니다.
          ],
        );
      },
    ));
  }
}
