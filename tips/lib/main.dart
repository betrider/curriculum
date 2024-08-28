// ignore_for_file: avoid_print
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:tips/widgets/effectless_scroll_behavior.dart';

void main() async {
  // 기본 앱세팅
  await platformSetup();
  runApp(const MyApp());
}

/// 플러터 환경설정 세팅
Future<void> platformSetup() async {
  WidgetsFlutterBinding.ensureInitialized();

  // android : status bar 색상 및 아이콘 적용
  //
  // ios : 아이콘 색상 적용
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // android 상태바 색상
      statusBarIconBrightness: Brightness.dark, //android 아이콘 밝기
      statusBarBrightness: Brightness.light, //ios status bar 밝기 (대비되는 아이콘 색상)
    ),
  );

  // 가로모드 제어
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 다국어 기본 한국어로 적용
  Intl.defaultLocale = 'ko_KR';

  // 충돌 보고 및 예외처리
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    print(errorDetails);
    // Firebase Crashlytics
    // FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    print(error);
    // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // Error widget
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '오류가 발생했습니다!\n${details.exception}',
        textAlign: TextAlign.center, //
      ),
    );
  };

  /// svg 아이콘 이미지 캐싱
  svgPrecacheImage();
}

/// svg 아이콘 이미지 캐싱
void svgPrecacheImage() {
  const svgImages = [
    // ...
  ];

  for (String element in svgImages) {
    var loader = SvgAssetLoader(element);
    svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp build 순서
    // 1.home
    // 2.routes
    // 3.onGenerateRoute
    // 4.onUnknownRoute
    // 5.builder
    return MaterialApp(
      scrollBehavior: EffectlessScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        //다국어 지원
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        //다국어 지원
        Locale('ko', 'KR'),
        Locale('en', 'US'),
      ],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      builder: (context, child) {
        // 폰트 1.0 ~ 1.5 범위
        // const minScaleFactor = 1.00;
        // const maxScaleFactor = 1.50;
        // var textScaleFactor = MediaQuery.of(context).textScaler.scale(1); // example : 1.2
        // var textScaleFactor2 = max(textScaleFactor, minScaleFactor); // max(1.2, 1.0) => 1.2
        // var textScaleFactor3 = min(textScaleFactor2, maxScaleFactor); // min(1.2, 1.5) => 1.2
        // print(textScaleFactor3);

        // 폰트 1.0 고정
        return child!;
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
