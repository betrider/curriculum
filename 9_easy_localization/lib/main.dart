import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_localization/generated/codegen_loader.g.dart';
import 'package:flutter_easy_localization/generated/locale_keys.g.dart';

// ------------------------------------------------

// CodegenLoader 생성(locle 최신화) - .json & .key 만 호환
// flutter pub run easy_localization:generate -S assets/translations

// LocaleKeys 생성(locle key 최신화) - 파일 하나 기준(현재 ko-KR)
// flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations

// ------------------------------------------------

// -h , 도움말
// -S , 현지화 폴더(resources/langs)
// -s , 현지화 파일(First file)
// -O , 생성 파일 위치(lib/generated)
// -o , 파일 이름(codegen_loader.g.dart)
// -f , 파일 포맷(json)
// -u , 중첩 키 무시(false)

// ------------------------------------------------

// 1.키 중복 확인가능
// 2.언어별 데이터 정합성
// 3.키값 일괄 변경
// 4.변경 데이터 바로 반영
// 5.테스트 용이(context 없이 사용)

// ------------------------------------------------

// Locale File -> {languageCode}-{countryCode}.json
// Locale -> {languageCode}_{countryCode}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // 분실된 키 메시지만 표시
  EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.warning];

  // 커스텀 로거
  // EasyLogPrinter customLogPrinter = (
  //   Object object, {
  //   String name,
  //   StackTrace stackTrace,
  //   LevelMessages level,
  // }) {
  //   ///Your function
  //   print('$name: ${object.toString()}');
  // };

  // /// override printer to custom
  // EasyLocalization.logger.printer = customLogPrinter;

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'), // en_US(미국식), en_GB(영국식)
        Locale('ko', 'KR'),
      ],

      /// csv
      // path: 'assets/translations/langs.csv',
      // assetLoader: CsvAssetLoader(),

      /// json
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),

      /// 시작 언어
      // startLocale: const Locale('en', 'US'),
      /// 예외처리 언어
      // fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const MyHomePage(),
    );
  }
}

// tr
//
// args - {} 를 치환
// namedArgs - {key} 를 치환
// gender - key 안에 key를 고를때 사용
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('title').tr(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(LocaleKeys.amount),
            const Text('msg').tr(args: ['Easy localization', 'Dart']),
            const Text('msg_mixed').tr(args: ['Easy localization'], namedArgs: {'lang': 'ABCD'}),
            const Text('type').tr(gender: 'aType', args: ['333']),
            const Text('type').tr(gender: 'bType', args: ['555']),
            const Text('type').tr(gender: 'other', args: ['777']),
            Text('example.helloWorld'.tr()),
            const Divider(),
            Text(CardFormatType.csn.title),
            const Divider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 현지화 설정
          context.setLocale(const Locale('en', 'US'));

          // 현재 현지와 가져오기
          // print(context.locale.toString());

          // 장치 현지와 가져오기
          // print(context.deviceLocale.toString())

          // 장치 현지와 삭제
          // print(context.deleteSaveLocale());

          // 지원 현지화 가져오기
          // print(context.supportedLocales);

          // 기본 현지화 가져오기
          // print(context.fallbackLocale);

          // 현지화 변환 - Locale('en', 'US')
          // print('en'.toLocale());
          // print('en_US'.toLocale());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// 수정 후
enum CardFormatType {
  /// Mifare CSN 타입
  csn('CSN', LocaleKeys.amount),

  /// Wiegand 타입
  wiegand('WIEGAND', LocaleKeys.amount);

  final String value;
  final String _title;

  String get title => _title.tr();

  const CardFormatType(this.value, this._title);
}

// 수정 전
enum CardFormatType2 {
  /// Mifare CSN 타입
  csn('CSN'),

  /// Wiegand 타입
  wiegand('WIEGAND');

  final String value;

  String get title {
    switch (this) {
      case CardFormatType2.csn:
        // return LocaleAssist().of.csnCardType;
        return '';
      case CardFormatType2.wiegand:
        // return LocaleAssist().of.wiegandCardType;
        return '';
    }
  }

  const CardFormatType2(this.value);
}
