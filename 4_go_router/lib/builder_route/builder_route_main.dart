// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs, avoid_print

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'builder_route_main.g.dart';

void main() => runApp(App());

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: _router,
      );

  final GoRouter _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    initialLocation: '/foo',
    debugLogDiagnostics: true,
    errorBuilder: (c, s) => ErrorRoute(s.error!).build(c, s),
  );
}

@TypedShellRoute<MyShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<FooRouteData>(
      path: '/foo',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<FooDetailRouteData>(
          path: 'detail',
        ),
      ],
    ),
    TypedGoRoute<BarRouteData>(
      path: '/bar',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<BarDetailRouteData>(
          path: 'detail',
        ),
      ],
    ),
    TypedGoRoute<ExtraRouteData>(path: '/extra'),
    TypedGoRoute<PathRouteData>(path: '/path/:id/:name'),
    TypedGoRoute<QueryRouteData>(path: '/query'),
  ],
)
class MyShellRouteData extends ShellRouteData {
  const MyShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return MyShellRouteScreen(child: navigator);
  }
}

class MyShellRouteScreen extends StatelessWidget {
  const MyShellRouteScreen({required this.child, super.key});

  final Widget child;

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/bar')) {
      return 1;
    } else if (location.startsWith('/extra')) {
      return 2;
    } else if (location.startsWith('/path')) {
      return 3;
    } else if (location.startsWith('/query')) {
      return 4;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final int currentIndex = getCurrentIndex(context);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Foo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Bar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explicit_sharp),
            label: 'Extra',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explicit_sharp),
            label: 'Path',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explicit_sharp),
            label: 'Query',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              var location = const FooRouteData().location;
              print(location);
              const FooRouteData().go(context);
              break;
            case 1:
              var location = const BarRouteData().location;
              print(location);
              const BarRouteData().go(context);
              break;
            case 2:
              var location = const ExtraRouteData($extra: Extra(1)).location;
              print(location);
              const ExtraRouteData($extra: Extra(1)).go(context);
              break;
            case 3:
              var location = const PathRouteData(id: '1234', name: '555').location;
              print(location);
              const PathRouteData(id: '1234', name: '555').go(context);
              break;
            case 4:
              var location = const QueryRouteData(id: '4321', title: 'a111').location;
              print(location);
              const QueryRouteData(id: '4321', title: 'a111').go(context);
              break;
          }
        },
      ),
    );
  }
}

// ------------------------------------------------------------

class FooRouteData extends GoRouteData {
  const FooRouteData();

  // 우선순위 2-2
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FooScreen();
  }

  // 우선순위 2-1
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const CupertinoPage(child: FooScreen());
  }

  // 우선순위 1
  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return null;
  }
}

class FooScreen extends StatelessWidget {
  const FooScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Foo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const FooDetailRouteData().go(context);
          },
          child: const Text('Detail'),
        ),
      ),
    );
  }
}

class FooDetailRouteData extends GoRouteData {
  const FooDetailRouteData();

  // 이 정적 키가 없으면 대화 상자가 탐색 레일을 덮지 않습니다.
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FooDetailScreen();
  }
}

class FooDetailScreen extends StatelessWidget {
  const FooDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FooDetail')),
      body: const Center(
        child: Text('Foo Detail'),
      ),
    );
  }
}

// ------------------------------------------------------------

class BarRouteData extends GoRouteData {
  const BarRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BarScreen();
  }
}

class BarScreen extends StatelessWidget {
  const BarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const BarDetailRouteData().push(context);
          },
          child: const Text('Detail'),
        ),
      ),
    );
  }
}

class BarDetailRouteData extends GoRouteData {
  const BarDetailRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BarDetailScreen();
  }
}

class BarDetailScreen extends StatelessWidget {
  const BarDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BarDetail')),
      body: const Center(
        child: Text('Bar Detail'),
      ),
    );
  }
}

// ------------------------------------------------------------

class Extra {
  const Extra(this.value);

  final int value;
}

class ExtraRouteData extends GoRouteData {
  const ExtraRouteData({required this.$extra});

  final Extra $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) => RequiredExtraScreen(extra: $extra);
}

class RequiredExtraScreen extends StatelessWidget {
  const RequiredExtraScreen({super.key, required this.extra});

  final Extra extra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Extra')),
      body: Center(child: Text('Extra: ${extra.value}')),
    );
  }
}

// ------------------------------------------------------------

class PathRouteData extends GoRouteData {
  const PathRouteData({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PathScreen(id: id, name: name);
  }
}

class PathScreen extends StatelessWidget {
  const PathScreen({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Path')),
      body: Center(
        child: Text('Path: id - $id / name - $name'),
      ),
    );
  }
}

// ------------------------------------------------------------

class QueryRouteData extends GoRouteData {
  const QueryRouteData({
    required this.id,
    required this.title,
  });

  final String id;
  final String title;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QueryScreen(
      id: id,
      title: title,
    );
  }
}

class QueryScreen extends StatelessWidget {
  const QueryScreen({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Path')),
      body: Center(
        child: Text('Path: id - $id / title - $title'),
      ),
    );
  }
}

// ------------------------------------------------------------

class ErrorRoute extends GoRouteData {
  ErrorRoute(this.error);
  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) => ErrorScreen(error: error);
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Screen'),
      ),
      body: Center(
        child: Text(
          error.toString(),
        ),
      ),
    );
  }
}
