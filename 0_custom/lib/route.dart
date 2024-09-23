import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    // var loginInfo = ref.read(authProvier);
    return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      // refreshListenable: loginInfo,
      refreshListenable: GoRouterRefreshStream(const Stream.empty()),
      redirect: (context, state) {
        // GoRouter(
        //   name: 'person',
        //   path: 'person/:pid',
        // )

        // expect(state.uri.toString(), '/family/f2/person/p1');
        // expect(state.matchedLocation, '/family/f2/person/p1');
        // expect(state.name, 'person');
        // expect(state.path, 'person/:pid');
        // expect(state.fullPath, '/family/:fid/person/:pid');

        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: SizedBox.shrink());
          },
        ),
      ],
    );
  },
);

// case 1
final authProvier = ChangeNotifierProvider<AuthInfo>((ref) => AuthInfo());

class AuthInfo extends ChangeNotifier {}

// case 2
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
