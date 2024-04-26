import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_widget/sample/1_scaffold_widget/scaffold.dart';
import 'package:flutter_widget/sample/2_basic_widget/basic.dart';
import 'package:random_color_scheme/random_color_scheme.dart';

// 1.lib > main.dart > main 함수 실행
// 2.runApp
// 3.MaterialApp()
// 4.home - MyHomePage() - view
// 5.Scaffold(canvas)

void main() {
  runApp(const MyApp());
}

// Stateless Widget(state x)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tooltipTheme: const TooltipThemeData(
          verticalOffset: 25,
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: ToolTipCustomShape(),
          ),
        ),
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Tile(
                title: 'Scaffold',
                index: 1,
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ScaffoldSample(),
                    ),
                  );
                },
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Basic',
                index: 2,
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const BasicWidget(),
                    ),
                  );
                },
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Layout',
                index: 3,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Divider',
                index: 4,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Text',
                index: 5,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'TextField',
                index: 6,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Tile(
                title: 'Button',
                index: 7,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Align',
                index: 8,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Tile(
                title: 'Children',
                index: 9,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Scroll',
                index: 10,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Gesture',
                index: 11,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Asset',
                index: 12,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Indicator',
                index: 13,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Clip',
                index: 14,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Tile(
                title: 'Visible',
                index: 15,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'Builder',
                index: 16,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Tile(
                title: 'Dialog',
                index: 17,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'PlaceHolder',
                index: 18,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'TabBar',
                index: 19,
                onTap: () {},
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Tile(
                title: 'PageView',
                index: 20,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    this.title,
    this.index,
    this.onTap,
  }) : super(key: key);

  final String? title;
  final int? index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: randomColorSchemeLight(seed: index != null ? index! + 100 * 30 : null).background,
        child: title == null
            ? null
            : Center(
                child: Text(
                  title!,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
      ),
    );
  }
}

class ToolTipCustomShape extends ShapeBorder {
  final bool usePadding;

  const ToolTipCustomShape({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: usePadding ? 10 : 0); // 화살표 크기를 줄이기 위해 padding 수정

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 10)); // 화살표 크기를 절반으로 줄이기 위해 rect 수정
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 3)))
      ..moveTo(rect.bottomCenter.dx - 5, rect.topCenter.dy) // 화살표 시작점을 변경하고 크기를 줄임
      ..relativeLineTo(5, -10) // 위로 이동
      ..relativeLineTo(5, 10) // 아래로 이동
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
