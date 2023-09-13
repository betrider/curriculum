// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_widget/theme_sample.dart'; // (1) Flutter의 Material 패키지를 가져옵니다.

void main() {
  runApp(const MyApp()); // (2) MyApp 위젯을 실행하여 앱을 시작합니다.
}

class MyApp extends StatelessWidget {
  // 상태가 변하지 않는 정적인 UI 위젯
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Material Design 스타일의 앱
    return MaterialApp(
      title: 'Flutter Demo', // (3) 앱의 제목
      theme: customThemeData(),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ), // (5) 앱의 첫 화면
    );
  }
}

class MyHomePage extends StatefulWidget {
  // 상태가 변하는 동적인 UI 위젯
  const MyHomePage({super.key, required this.title});

  final String title; // (6) 홈 화면 제목

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // (7) 카운터 값

  void _incrementCounter() {
    setState(() {
      _counter++; // (8) 카운터 증가
    });
  }

  @override
  Widget build(BuildContext context) {
    print('빌드 시작');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('빌드 성공');
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // (9) 앱 바의 배경색
        title: Text(widget.title), // (10) 앱 바에 표시될 제목
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:', // (11) 화면에 표시되는 텍스트
            ),
            Text(
              '$_counter', // (12) 카운터 값 표시
              style: Theme.of(context).textTheme.headlineMedium, // (13) 텍스트 스타일 설정
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // (14) 버튼 클릭 시 호출되는 함수
        tooltip: 'Increment',
        child: const Icon(Icons.add), // (15) 버튼 아이콘
      ),
    );
  }
}

void key(){
  var objectKey = const ObjectKey(['a','b','c']);
  var valueKey = const ValueKey('key2');
  var uniqueKey = UniqueKey();
  var globalKey = GlobalKey<MyHomePageState>();
}