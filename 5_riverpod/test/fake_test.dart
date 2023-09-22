// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final ProviderContainer ref;

  setUpAll(() async {
    print('setUpAll');
    ref = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWith((ref) => FakeAuthRepository()),
      ],
    );
  });

  group('1.auth', () {
    test('signIn', () async {
      await ref.read(authNotifierProvider.notifier).signIn('dart');
      var status = ref.read(authNotifierProvider).status;
      expect(status, AuthState.authorized);
    });
    test('signOut', () async {
      await ref.read(authNotifierProvider.notifier).signOut();
      var status = ref.read(authNotifierProvider).status;
      expect(status, AuthState.unauthorized);
    });
  });

  tearDownAll(() {
    print('tearDownAll');
  });
}

// -----------------------------------------------------------------------------

/// 계정 프로바이더
final authNotifierProvider = NotifierProvider<AuthNotifier, AuthStates>(
  () {
    return AuthNotifier();
  },
  name: 'authNotifierProvider',
);

class AuthNotifier extends Notifier<AuthStates> {
  @override
  AuthStates build() {
    return const AuthStates(status: AuthState.unauthorized);
  }

  Future<void> signIn(String id) async {
    try {
      var result = await ref.read(authRepositoryProvider).signIn(id);
      state = AuthStates(previous: state.status, status: AuthState.authorized, data: result);
    } catch (e) {
      state = AuthStates(previous: state.status, status: AuthState.unauthorized, data: null);
    }
  }

  Future<void> signOut() async {
    try {
      await ref.read(authRepositoryProvider).signOut();
      state = const AuthStates(status: AuthState.unauthorized, data: null);
    } catch (e) {
      state = const AuthStates(status: AuthState.unauthorized, data: null);
    }
  }
}

class AuthStates<T> {
  final AuthState? previous;
  final AuthState status;
  final T? data;

  const AuthStates({
    this.previous,
    required this.status,
    this.data,
  });

  AuthStates copyWith({
    AuthState? previous,
    AuthState? status,
    T? data,
  }) {
    return AuthStates(
      previous: previous ?? this.previous,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}

/// 권한 상태
enum AuthState {
  /// 로그인 상태
  authorized,

  /// 비로그인 상태
  unauthorized,
}

/// 계정 Repository Provider
final authRepositoryProvider = Provider(
  (ref) => AuthRepository(),
  name: 'authRepositoryProvider',
);

/// 계정 Repository
class AuthRepository {
  /// 로그인
  Future<String> signIn(String id) {
    print('로그인');
    throw UnimplementedError();
  }

  /// 로그아웃
  Future<void> signOut() {
    print('로그아웃');
    throw UnimplementedError();
  }
}

/// 계정 Repository Mock
class FakeAuthRepository implements AuthRepository {
  /// 로그인
  @override
  Future<String> signIn(String id) async {
    print('테스트 로그인 id : $id');
    return id;
  }

  /// 로그아웃
  @override
  Future<void> signOut() async {
    print('테스트 로그아웃');
  }
}
