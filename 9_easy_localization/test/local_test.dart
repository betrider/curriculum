import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_localization/generated/codegen_loader.g.dart';
import 'package:flutter_easy_localization/generated/locale_keys.g.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  SharedPreferences.setMockInitialValues({});
  EasyLocalization.logger.enableLevels = [
    LevelMessages.error,
    LevelMessages.warning,
  ];
  await EasyLocalization.ensureInitialized();

  group('ko_KR 테스트', () {
    testWidgets('title 테스트', (tester) async {
      await koKRLocalizedWidgetForTesting(tester, text: LocaleKeys.title);
    });
  });

  group('en-US 테스트', () {
    testWidgets('title 테스트', (tester) async {
      await enUSLocalizedWidgetForTesting(tester, text: LocaleKeys.title);
    });
  });
}

Future<void> koKRLocalizedWidgetForTesting(
  WidgetTester tester, {
  required String text,
}) async {
  await tester.runAsync(() async {
    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale('ko', 'KR')],
        path: 'assets/translations',
        child: Builder(
          builder: (context) {
            return MaterialApp(
              locale: EasyLocalization.of(context)!.locale,
              supportedLocales: EasyLocalization.of(context)!.supportedLocales,
              localizationsDelegates: EasyLocalization.of(context)!.delegates,
              home: Builder(
                builder: (context) {
                  var translateText = text.tr();
                  return Text(translateText);
                },
              ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    var findText = CodegenLoader.ko_KR[text];
    expect(find.text(findText), findsOneWidget);
  });
}

Future<void> enUSLocalizedWidgetForTesting(
  WidgetTester tester, {
  required String text,
}) async {
  await tester.runAsync(() async {
    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale('en', 'US')],
        path: 'assets/translations',
        child: Builder(
          builder: (context) {
            return MaterialApp(
              locale: EasyLocalization.of(context)!.locale,
              supportedLocales: EasyLocalization.of(context)!.supportedLocales,
              localizationsDelegates: EasyLocalization.of(context)!.delegates,
              home: Builder(
                builder: (context) {
                  var translateText = text.tr();
                  return Text(translateText);
                },
              ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    var findText = CodegenLoader.en_US[text];
    expect(find.text(findText), findsOneWidget);
  });
}
