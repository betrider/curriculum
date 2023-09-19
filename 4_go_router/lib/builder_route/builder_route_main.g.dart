// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'builder_route_main.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myShellRouteData,
    ];

RouteBase get $myShellRouteData => ShellRouteData.$route(
      navigatorKey: MyShellRouteData.$navigatorKey,
      factory: $MyShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/foo',
          factory: $FooRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'detail',
              parentNavigatorKey: FooDetailRouteData.$parentNavigatorKey,
              factory: $FooDetailRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/bar',
          factory: $BarRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'detail',
              factory: $BarDetailRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/extra',
          factory: $ExtraRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/path/:id/:name',
          factory: $PathRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/query',
          factory: $QueryRouteDataExtension._fromState,
        ),
      ],
    );

extension $MyShellRouteDataExtension on MyShellRouteData {
  static MyShellRouteData _fromState(GoRouterState state) =>
      const MyShellRouteData();
}

extension $FooRouteDataExtension on FooRouteData {
  static FooRouteData _fromState(GoRouterState state) => const FooRouteData();

  String get location => GoRouteData.$location(
        '/foo',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FooDetailRouteDataExtension on FooDetailRouteData {
  static FooDetailRouteData _fromState(GoRouterState state) =>
      const FooDetailRouteData();

  String get location => GoRouteData.$location(
        '/foo/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BarRouteDataExtension on BarRouteData {
  static BarRouteData _fromState(GoRouterState state) => const BarRouteData();

  String get location => GoRouteData.$location(
        '/bar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BarDetailRouteDataExtension on BarDetailRouteData {
  static BarDetailRouteData _fromState(GoRouterState state) =>
      const BarDetailRouteData();

  String get location => GoRouteData.$location(
        '/bar/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ExtraRouteDataExtension on ExtraRouteData {
  static ExtraRouteData _fromState(GoRouterState state) => ExtraRouteData(
        $extra: state.extra as Extra,
      );

  String get location => GoRouteData.$location(
        '/extra',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $PathRouteDataExtension on PathRouteData {
  static PathRouteData _fromState(GoRouterState state) => PathRouteData(
        id: state.pathParameters['id']!,
        name: state.pathParameters['name']!,
      );

  String get location => GoRouteData.$location(
        '/path/${Uri.encodeComponent(id)}/${Uri.encodeComponent(name)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QueryRouteDataExtension on QueryRouteData {
  static QueryRouteData _fromState(GoRouterState state) => QueryRouteData(
        id: state.uri.queryParameters['id']!,
        title: state.uri.queryParameters['title']!,
      );

  String get location => GoRouteData.$location(
        '/query',
        queryParams: {
          'id': id,
          'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
