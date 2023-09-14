import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget/repository/test_repository_provider.dart';

final futureUsersProvider = FutureProvider.family<List<String>, int>(
  (ref, page) {
    return ref.watch(testRepositoryProvider).getUsers(page);
  },
  name: 'futureUsersProvider',
);