import 'dart:developer';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tips/firebase_options.dart';

//----------------------------------------------------------------------

/// 3-3.앱이 켜져있는 상태에서 알림 클릭 시 이벤트(localNotification o)
@pragma('vm:entry-point')
void _onDidReceiveNotificationResponse(NotificationResponse notificationResponse) {
  log(name: 'firebase', 'onDidReceiveNotificationResponse');
}

/// 3-4.앱이 꺼져있는 상태에서 알림 클릭 시 이벤트(localNotification o)
@pragma('vm:entry-point')
void _onDidReceiveBackgroundNotificationResponse(NotificationResponse notificationResponse) {
  log(name: 'firebase', 'onDidReceiveBackgroundNotificationResponse');
}

//----------------------------------------------------------------------

/// 포그라운드 상태에서 수신
Future<void> _forgroundFCMHandler(RemoteMessage message) async {
  await _firebaseMessagingHandler('forground', message);
}

/// 백그라운드 상태에서 수신
Future<void> _backgroundFCMHandler(RemoteMessage message) async {
  if (message.data.isNotEmpty) {
    await _firebaseMessagingHandler('background', message);
  }
}

/// FCM 수신시 데이터 처리
Future<void> _firebaseMessagingHandler(String data, RemoteMessage message) async {
  log(name: 'firebase', 'FCM 수신 $data message : ${message.data}');
  await showNotification(message);
}

//----------------------------------------------------------------------

final firebaseServiceProvider = Provider<FirebaseService>(
  (ref) {
    return FirebaseService(ref);
  },
  name: 'firebaseServiceProvider',
);

/// firebase 관리 서비스
class FirebaseService {
  final ProviderRef ref;

  FirebaseService(this.ref);

  late final messaging = FirebaseMessaging.instance;

  late final analytics = FirebaseAnalytics.instance;

  late final crashlytics = FirebaseCrashlytics.instance;

  Future<void> initialize() async {
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      return;
    }

    //-----------------------------------------------------------------------------

    // 1-1.firebase initialize
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform, name: 'readyToFly');

    // 1-2.request permission
    await firebaseMessageRequestPermission();

    // 1-3.init localNotification(add onClick Event)
    await localNotificationInit();

    //-----------------------------------------------------------------------------

    // 2-1.앱이 포그라운드에 있을 때 수신
    FirebaseMessaging.onMessage.listen((event) {
      // 알림 카운트 갱신
      _forgroundFCMHandler(event);
    });

    // 2-2.앱이 백그라운드에 있을 때 수신
    FirebaseMessaging.onBackgroundMessage(_backgroundFCMHandler);

    //-----------------------------------------------------------------------------

    // 3-1.앱이 켜져있는 상태에서 알림 클릭 시 이벤트(Notification o)
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      log(name: 'firebase', 'FCM Click(FirebaseMessaging.onMessageOpenedApp.listen)');
    });

    // 3-2.앱이 꺼져있는 상태에서 알림 클릭 시 이벤트(Notification o)
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      log(name: 'firebase', 'FCM Click(FirebaseMessaging.instance.getInitialMessage())');
    });

    //-----------------------------------------------------------------------------
  }

  Future<void> getInitialMessaging() async {
    RemoteMessage? message = await messaging.getInitialMessage();
    if (message?.data != null) {
      log(name: 'firebase', 'getInitialMessaging');
      log(name: 'firebase', message!.data.toString());
    }
  }

  Future<void> firebaseMessageRequestPermission() async {
    await messaging.requestPermission(sound: true, badge: true, alert: true);
  }

  Future<void> localNotificationInit() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettingsIOS = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    InitializationSettings initializationsSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    // android 13이상에서 권한 요청
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();

    await flutterLocalNotificationsPlugin.initialize(
      initializationsSettings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
      onDidReceiveBackgroundNotificationResponse: _onDidReceiveBackgroundNotificationResponse,
    );
  }

  // PUSH를 보내기위해 식별할 수 있는 토큰 추출 (JWT 인증 토큰 아님)
  Future<String> getToken() async {
    if (Platform.isAndroid || Platform.isIOS) {
      var token = await messaging.getToken();

      if (token == null) {
        throw Exception("can not get fcm token");
      }

      return token;
    } else {
      return Future.value("this_is_desktop_firebase_token");
    }
  }
}

// foreground일 때 push 알림을 보내기위한 FlutterLocalNotificationsPlugin 이하 FLN
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

// FLN Push 알림
Future<void> showNotification(RemoteMessage message) async {
  String title = message.data["title"] ?? '제목';
  String body = message.data["body"] ?? '내용';
  String? messageKey;

  AndroidNotificationDetails androidPlatformChannelSpecifics = const AndroidNotificationDetails(
    'id_fcm_channel',
    'fcm_channel',
    channelDescription: 'fcm_channel_description...',
    importance: Importance.max,
    priority: Priority.high,
    ticker: 'ticker',
    // tag: messageKey, //키 값
  );
  NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(0, title, body, platformChannelSpecifics, payload: messageKey);
}

/// 관련된 알림 제거
Future<void> removeAllNotification() async {
  await flutterLocalNotificationsPlugin.cancelAll();
}
