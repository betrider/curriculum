import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiImpl implements Api {
  const ApiImpl();
  @override
  Future<List<String>> getNames() => Future.delayed(
        const Duration(seconds: 3),
        () => ['John', 'Paul', 'George', 'Ringo'],
      );
}

class FakeApis implements Api {
  const FakeApis();
  @override
  Future<List<String>> getNames() => Future.delayed(
        const Duration(seconds: 3),
        () => [
          'Fake value 1',
          'Fake value 2',
          'Fake value 3',
          'Fake value 4',
        ],
      );
}

abstract class Api {
  Future<List<String>> getNames();
  const Api();
}

final apiProvider = Provider<Api>(
  (_) => const ApiImpl(),
);

void main() {
  runApp(
    ProviderScope(
      overrides: [
        apiProvider.overrideWithValue(
          const FakeApis(),
        ),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
