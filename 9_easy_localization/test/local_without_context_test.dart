import 'package:easy_localization/src/easy_localization_controller.dart';
import 'package:easy_localization/src/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_localization/generated/codegen_loader.g.dart';
import 'package:flutter_easy_localization/generated/locale_keys.g.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A manually created instance of Localization to enable translating without context.
final Localization L = Localization.instance;

/// Method to load translations since context is not available in isolate.
Future<void> loadTranslations(Locale locale) async {
  //this will only set EasyLocalizationController.savedLocale
  await EasyLocalizationController.initEasyLocation();

  final controller = EasyLocalizationController(
    saveLocale: true, //mandatory to use EasyLocalizationController.savedLocale
    fallbackLocale: locale,
    supportedLocales: [locale],
    assetLoader: const CodegenLoader(), // 대체
    useOnlyLangCode: false,
    useFallbackTranslations: true,
    path: 'assets/translations', // 무시
    onLoadError: (FlutterError e) {},
  );

  //Load translations from assets
  await controller.loadTranslations();

  //load translations into exploitable data, kept in memory
  Localization.load(controller.locale, translations: controller.translations, fallbackTranslations: controller.fallbackTranslations);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  group('ko_KR 테스트', () {
    Map<String, dynamic> mapLocale = Map.from(CodegenLoader.ko_KR);

    setUpAll(() async {
      await loadTranslations(const Locale('ko', 'KR'));
    });

    test('LocaleKeys.title 테스트', () {
      var actual = L.tr(LocaleKeys.title);
      var matcher = "제목";
      expect(actual, matcher, reason: '이유 : ${LocaleKeys.title} 번역 확인');
      mapLocale.remove(LocaleKeys.title);
    });

    test('LocaleKeys.msg 테스트', () {
      var actual = L.tr(LocaleKeys.msg, args: ['Easy localization', 'Dart']);
      var matcher = "Easy localization are written in the Dart 언어";
      expect(actual, matcher, reason: '이유 : ${LocaleKeys.msg} 번역 확인');
      mapLocale.remove(LocaleKeys.msg);
    });

    // ...

    test('LocaleKeys.msg 테스트', () {
      expect(mapLocale.keys, {}, reason: '이유 : 현지화 모든 데이터 테스트 확인');
    });
  });
  group('en_US 테스트', () {
    Map<String, dynamic> mapLocale = Map.from(CodegenLoader.en_US);

    setUpAll(() async {
      await loadTranslations(const Locale('en', 'US'));
    });

    test('LocaleKeys.title 테스트', () {
      var actual = L.tr(LocaleKeys.title);
      var matcher = "title";
      expect(actual, matcher, reason: '이유 : ${LocaleKeys.title} 번역 확인');
      mapLocale.remove(LocaleKeys.title);
    });

    test('LocaleKeys.msg 테스트', () {
      var actual = L.tr(LocaleKeys.msg, args: ['Easy localization', 'Dart']);
      var matcher = "Easy localization are written in the Dart language";
      expect(actual, matcher, reason: '이유 : ${LocaleKeys.msg} 번역 확인');
      mapLocale.remove(LocaleKeys.msg);
    });

    // ...

    test('LocaleKeys.msg 테스트', () {
      expect(mapLocale.keys, {}, reason: '이유 : 현지화 모든 데이터 테스트 확인');
    });
  });
}
