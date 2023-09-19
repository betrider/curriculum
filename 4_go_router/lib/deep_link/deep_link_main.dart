// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';

// 1.deep link : https://docs.flutter.dev/cookbook/navigation/set-up-app-links
// 2.animation page
// 3.error page

void main() => runApp(MaterialApp.router(routerConfig: router));

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'details',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const DetailsScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(state.error),
);

/// 메인 페이지
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Link(
            uri: Uri.parse('/details1'),
            builder: (BuildContext context, FollowLink? followLink) {
              return ElevatedButton(
                onPressed: followLink,
                child: const Text('링크'),
              );
            }),
      ),
    );
  }
}

/// 상세 페이지
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Text(
          GoRouterState.of(context).uri.toString(),
        ),
      ),
    );
  }
}

/// 오류 페이지
class ErrorScreen extends StatelessWidget {
  const ErrorScreen(this.error, {super.key});

  final GoException? error;

  @override
  Widget build(BuildContext context) {
    var location = error?.message.split('location: ')[1];
    print('location: $location');
    return Scaffold(
      appBar: AppBar(title: const Text('Error Screen')),
      body: Center(
        child: Text(error?.message ?? '페이지를 찾을 수 없습니다.'),
      ),
    );
  }
}
