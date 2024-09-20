import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: child!,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 현재 브레이크포인트 이름
    var deviceName = ResponsiveBreakpoints.of(context).breakpoint.name.toString();
    var width = ResponsiveBreakpoints.of(context).screenWidth.toString();
    var height = ResponsiveBreakpoints.of(context).screenHeight.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('$deviceName($width,$height)'),
        centerTitle: true,
      ),
      body: PageView(
        children: const [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
      ),
    );
  }
}

// 조건에 따라 Row 또는 Column으로 변환되는 위젯
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResponsiveRowColumn'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ResponsiveRowColumn(
          columnMainAxisAlignment: MainAxisAlignment.center,
          columnSpacing: 32,
          rowSpacing: 32,
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? ResponsiveRowColumnType.ROW : ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _redBox(context),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _blueBox(context),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _greenBox(context),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _redBox(context),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _blueBox(context),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _greenBox(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _redBox(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
    );
  }

  Widget _blueBox(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    );
  }

  Widget _greenBox(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
  }
}

// 고정된 크기의 자식을 가지는 그리드뷰
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResponsiveGridView'),
        centerTitle: true,
      ),
      body: ResponsiveGridView.builder(
        gridDelegate: const ResponsiveGridDelegate(
          // 아이템 사이즈
          crossAxisExtent: 200,
          // 가로축
          mainAxisSpacing: 16,
          // 세로축
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return _gridItem();
        },
      ),
    );
  }

  Widget _gridItem() {
    return Container(
      color: Colors.blue,
    );
  }
}

// 콘텐츠가 너무 넓게 늘어나는것을 방지하는 박스
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaxWidthBox'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 90 : 16),
        color: Colors.red,
        child: const MaxWidthBox(
          maxWidth: 1100,
          child: Placeholder(),
        ),
      ),
    );
  }
}

// 자식 위젯을 가로로 나열하고, 공간이 부족하면 아래로 내려가는 위젯
class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
        centerTitle: true,
      ),
      body: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
          _redBox(),
          _blueBox(),
        ],
      ),
    );
  }

  Widget _redBox() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }

  Widget _blueBox() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    );
  }
}

extension ResponsiveContext on BuildContext {
  /// 현재 브레이크포인트가 모바일인지 확인
  bool get isMobile {
    return ResponsiveBreakpoints.of(this).isMobile;
  }

  /// 현재 브레이크포인트가 데스크탑인지 확인
  bool get isDesktop {
    return ResponsiveBreakpoints.of(this).isDesktop;
  }

  /// 현재 브레이크포인트가 모바일보다 큰지 확인
  bool get isLargerThanMobile {
    return ResponsiveBreakpoints.of(this).largerThan(MOBILE);
  }

  /// 현재 브레이크포인트가 데스크탑보다 큰지 확인
  bool get isLargerThanDesktop {
    return ResponsiveBreakpoints.of(this).smallerThan(DESKTOP);
  }

  /// break point 이름
  String get deviceName {
    return ResponsiveBreakpoints.of(this).breakpoint.name.toString();
  }

  /// break point 너비
  String get deviceWidth {
    return ResponsiveBreakpoints.of(this).screenWidth.toString();
  }

  /// break point 높이
  String get deviceHeight {
    return ResponsiveBreakpoints.of(this).screenHeight.toString();
  }
}
