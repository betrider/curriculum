import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget/repository/test_repository_provider.dart';

final futureUserProvider = FutureProvider.family<String, String>(
  (ref, id) {
    return ref.watch(testRepositoryProvider).getUser(id);
  },
  name: 'futureUserProvider',
);