import 'package:flutter_riverpod/flutter_riverpod.dart';

final testRepositoryProvider = Provider<TestRepository>((ref) {
  return TestRepository(ref);
});

class TestRepository {
  final Ref ref;

  TestRepository(this.ref);

  Future<String> getUser(String id) async {
    return 'user';
  }

  Future<List<String>> getUsers(int page) async {
    return ['user1', 'user2', 'user3'];
  }
}
