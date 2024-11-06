import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/main.dart';
import 'package:flutter_custom_widget/pages/custom_dropdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    // var authProvider = ref.read(authProvier);
    return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      // refreshListenable: authProvider,
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
            return const NoTransitionPage(child: MainPage());
          },
          routes: [
            GoRoute(
              path: CustomDropDownPage.routeName,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: CustomDropDownPage());
              },
            ),
          ],
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

// class ExtraModel {
//   const ExtraModel();

//   static String toExtra<T>(T value) {
//     switch (value) {
//       case ReservationInfo model:
//         return json.encode(model.toJson());
//       case ReservationConclusionResponse model:
//         return json.encode(model.toJson());
//       default:
//         throw Exception('Unknown type');
//     }
//   }

//   static T fromExtra<T>(String source) {
//     switch (T) {
//       case const (ReservationInfo):
//         return ReservationInfo.fromJson(json.decode(source)) as T;
//       case const (ReservationConclusionResponse):
//         return ReservationConclusionResponse.fromJson(json.decode(source)) as T;
//       default:
//         throw Exception('Unknown type');
//     }
//   }
// }
