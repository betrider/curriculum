import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget/repository/test_repository_provider.dart';

final futureProvider = FutureProvider<List<String>>(
  (ref) {
    return ref.watch(testRepositoryProvider).getUsers(1);
  },
  name: 'futureProvider',
);

class FutureSampleWidget1 extends ConsumerWidget {
  const FutureSampleWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.watch(futureProvider.future),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const CircularProgressIndicator();
        return const Text('Success');
      },
    );
  }
}

class FutureSampleWidget2 extends ConsumerWidget {
  const FutureSampleWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var result = ref.watch(futureProvider);
    return result.when(
      data: (data) {
        return Center(child: Text('length:${data.length}'));
      },
      error: (error, stackTrace) {
        return Center(child: Text('error:$error'));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
