import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/utils/localization/codegen_loader.g.dart';
import 'package:flutter_custom_widget/utils/localization/locale_keys.g.dart';
import 'package:universal_html/html.dart' as html;

void main() async {
  // 위젯 바인딩 초기화
  WidgetsFlutterBinding.ensureInitialized();
  // 지역화 초기화
  await EasyLocalization.ensureInitialized();
  // 지역화 로그레벨 오류 레벨만 활성화
  EasyLocalization.logger.enableLevels = [LevelMessages.error];
  // web browser locale 정보 가져오기
  String systemLanguage = html.window.navigator.language;
  Locale locale = getLocaleFromLanguageCode(systemLanguage);
  runApp(
    EasyLocalization(
      startLocale: locale,
      supportedLocales: SupportedLanguage.locales,
      fallbackLocale: SupportedLanguage.enUS.locale,
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.language.tr()),
      ),
    );
  }
}

/// web language code -> Locale로 변환
Locale getLocaleFromLanguageCode(String languageCode) {
  for (var element in SupportedLanguage.values) {
    if (element.locale.languageCode == languageCode) {
      // Locale('ko', 'KR')
      return element.locale;
    }
    if (element.locale.languageCode.toString() == languageCode) {
      // ko
      return element.locale;
    }
    if ('${element.locale.languageCode}-${element.locale.countryCode}' == languageCode) {
      // ko-KR
      return element.locale;
    }
    if ('${element.locale.languageCode}_${element.locale.countryCode}' == languageCode) {
      // ko_KR
      return element.locale;
    }
  }

  return SupportedLanguage.enUS.locale;
}

enum SupportedLanguage {
  koKR(Locale('ko', 'KR')),
  enUS(Locale('en', 'US')),
  jaJP(Locale('ja', 'JP'));

  final Locale locale;

  static List<Locale> locales = SupportedLanguage.values.map((e) => e.locale).toList();

  const SupportedLanguage(this.locale);

  factory SupportedLanguage.fromLocale(Locale locale) {
    return SupportedLanguage.values.firstWhere((value) {
      return value.locale == locale;
    }, orElse: () {
      return SupportedLanguage.enUS;
    });
  }
}
