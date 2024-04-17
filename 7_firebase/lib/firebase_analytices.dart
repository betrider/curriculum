// ignore_for_file: avoid_print

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> analyticsReport() async {
  var analyticsInstance = FirebaseAnalytics.instance;

  // 디바이스 지원 확인
  print(await analyticsInstance.isSupported());

  // setUser
  //
  // 사용자 정보를 설정할 수 있는데,
  // GA는 기본적으로 사용자 고유 정보들을 추적하고 있다.
  // 그 외의 정보를 추가해주고 싶거나 특정하고 싶을 때 User를 세팅해주면,
  // 이 후 전송되는 이벤트 부터는 해당 User의 정보가 바인딩해서 전송이 된다.
  analyticsInstance.setUserId(id: 'betrider');
  analyticsInstance.setUserProperty(name: '홍길동', value: 'value123');

  // AppOpen
  // 애플리케이션이 최초 실행 됬을 때에 사용할 수 있는 이벤트이며,
  // 해당 이벤트는 사용하지 않더라도 Firebase Events가 GA에 자동적으로 전송하는 이벤트이다.
  analyticsInstance.logAppOpen();

  // Custom Event
  //
  // 커스텀 이벤트 등록
  FirebaseAnalytics.instance.logEvent(
    name: "comment",
    parameters: {
      "comment_id": 4523,
      "comment_content": "댓글을 남겼습니다.",
      "feed_id": 123,
    },
  );

  // view event
  //
  // 현재 스크린 세팅
  analyticsInstance.setCurrentScreen(screenName: "first");
}

final GoRouter router = GoRouter(
  observers: [
    FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance) // 옵저버
  ],
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
