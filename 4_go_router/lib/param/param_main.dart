import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MaterialApp.router(routerConfig: router));

/// 최상위 라우트는 path에 /을 포함o
/// 하위 라우트는 path에 /을 포함x
///
/// go - 현재 페이지를 대체하는 새로운 페이지로 이동
/// push - 현재 페이지 위에 새로운 페이지를 올리는 방식
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'path/:id/:name',
          builder: (context, state) => PathParamScreen(
            id: state.pathParameters['id']!,
            name: state.pathParameters['name']!,
          ),
          routes: [
            GoRoute(
              path: 'detail',
              builder: (context, state) => const DetailScreen(),
            )
          ],
        ),

        /// Migration
        /// before - final Map<String, String> queryParameters = GoRouterState.of(context).queryParameters;
        GoRoute(
            path: 'query',
            builder: (context, state) => QueryParamScreen(
                  id: state.uri.queryParameters['id']!,
                  name: state.uri.queryParameters['name']!,
                ),
            routes: [
              GoRoute(
                path: 'detail',
                builder: (context, state) => const DetailScreen(),
              )
            ]),
        GoRoute(
            path: 'extra',
            builder: (context, state) {
              var extra = state.extra as ({String id, String name});
              return ExtraParamScreen(
                id: extra.id,
                name: extra.name,
              );
            },
            routes: [
              GoRoute(
                path: 'detail',
                builder: (context, state) => const DetailScreen(),
              )
            ]),
      ],
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailScreen(),
    )
  ],
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Migration
    /// before - final String location = GoRouterState.of(context).location;
    final String uri = GoRouterState.of(context).uri.toString();
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('uri :$uri'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.push('/path/111/flutter');
              },
              child: const Text('path param(push)'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.go('/path/119/flutter');
            //   },
            //   child: const Text('path param(go)'),
            // ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.push('/query?id=222&name=flutter');
              },
              child: const Text('query param(push)'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.go('/query?id=229&name=flutter');
            //   },
            //   child: const Text('query param(go)'),
            // ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.push(
                  '/extra',
                  extra: (
                    id: '333',
                    name: 'flutter',
                  ),
                );
              },
              child: const Text('extra param(push)'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.go(
            //       '/extra',
            //       extra: (
            //         id: '339',
            //         name: 'flutter',
            //       ),
            //     );
            //   },
            //   child: const Text('extra param(go)'),
            // ),
          ],
        ),
      ),
    );
  }
}

class PathParamScreen extends StatelessWidget {
  const PathParamScreen({
    super.key,
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    final String uri = GoRouterState.of(context).uri.toString();
    return Scaffold(
      appBar: AppBar(title: const Text('PathParamScreen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('uri :$uri'),
            const SizedBox(height: 16),
            Text('id :$id'),
            Text('name :$name'),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.push('/path/117/flutter/detail'); // ok
                // context.push('/path/detail'); // error
              },
              child: const Text('push'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.go('/path/117/flutter/detail'); // ok
                // context.go('/path/detail'); // error
              },
              child: const Text('go'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('pop'),
            )
          ],
        ),
      ),
    );
  }
}

class QueryParamScreen extends StatelessWidget {
  const QueryParamScreen({
    super.key,
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    final String uri = GoRouterState.of(context).uri.toString();
    return Scaffold(
      appBar: AppBar(title: const Text('QueryParamScreen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('uri :$uri'),
            const SizedBox(height: 16),
            Text('id :$id'),
            Text('name :$name'),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                // context.push('/query?id=227&name=flutter/detail'); // ok
                context.push('/query/detail'); // ok
              },
              child: const Text('push'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                // context.go('/query?id=227&name=flutter/detail'); // error(뒤로 이동 시 주소 꼬임)
                context.go('/query/detail'); // error(param 오류)
              },
              child: const Text('go'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('pop'),
            )
          ],
        ),
      ),
    );
  }
}

class ExtraParamScreen extends StatelessWidget {
  const ExtraParamScreen({
    super.key,
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    final String uri = GoRouterState.of(context).uri.toString();
    return Scaffold(
      appBar: AppBar(title: const Text('QueryParamScreen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('uri :$uri'),
            const SizedBox(height: 16),
            Text('id :$id'),
            Text('name :$name'),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.push(
                  '/extra/detail',
                  extra: (
                    id: '337',
                    name: 'flutter',
                  ),
                );
              },
              child: const Text('push'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.go(
                  '/extra/detail',
                  extra: (
                    id: '337',
                    name: 'flutter',
                  ),
                );
              },
              child: const Text('go'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('pop'),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String uri = GoRouterState.of(context).uri.toString();
    return Scaffold(
      appBar: AppBar(title: const Text('DetailScreen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('uri :$uri'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('pop'),
            )
          ],
        ),
      ),
    );
  }
}
