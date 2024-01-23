import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

Future<void> crashlyticsReport() async {
  var crashInstance = FirebaseCrashlytics.instance;

  if (kDebugMode) {
    /// 디버그모드인 경우 수집하지 않는다.
    await crashInstance.setCrashlyticsCollectionEnabled(false);
  }

  print('수집상태 : ${crashInstance.isCrashlyticsCollectionEnabled}');

  try {
    throw '강제 오류';
  } catch (error, stackTrace) {
    await crashInstance.recordError(
      error,
      stackTrace,
      reason: '오류 사유',
      fatal: true, // 치명적 오류 여부
    );
  }

  // 커스텀 키 세팅
  crashInstance.setCustomKey('str_key', 'hello');

  // 유저 인증키 세팅
  crashInstance.setUserIdentifier("12345");

  // 커스텀 로그 메시지
  crashInstance.log("Higgs-Boson detected! Bailing out");
  
  // 플러터 예외처리 보고

  // Flutter 내에서 발생하는 모든 error를 catch할 수 있습니다.
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    crashInstance.recordFlutterError(errorDetails);
    crashInstance.recordFlutterFatalError(errorDetails);
  };

  // Flutter 프레임워크에서 처리하지 않고 포착되지 않은 모든 비동기 오류를 Crashlytics에 전달합니다.
  PlatformDispatcher.instance.onError = (error, stack) {
    crashInstance.recordError(error, stack, fatal: true);
    return true;
  };

}
