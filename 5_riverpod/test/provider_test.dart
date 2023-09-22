// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'provider_test.mocks.dart';

final authChangeNotifierProvider = ChangeNotifierProvider<AuthNotifier>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends ChangeNotifier {
  bool _isAuthenticated = false;
  String _username = '';

  bool get isAuthenticated => _isAuthenticated;
  String get username => _username;

  void login(String username, String password) {
    // 로그인 로직을 구현합니다.
    // 로그인 성공 시, _isAuthenticated를 true로 설정하고, _username을 저장합니다.
    _isAuthenticated = true;
    _username = username;

    notifyListeners(); // 변경 사항을 알립니다.
  }

  void logout() {
    // 로그아웃 로직을 구현합니다.
    // 로그아웃 성공 시, _isAuthenticated를 false로 설정하고, _username을 초기화합니다.
    _isAuthenticated = false;
    _username = '';

    notifyListeners(); // 변경 사항을 알립니다.
  }
}

@GenerateMocks([AuthNotifier])
void main() {
  group('1.계정 테스트', () {
    test('mock 샘플 확인', () async {
      final mockMyProvider = MockAuthNotifier();
      // ref 생성
      ProviderContainer ref = ProviderContainer(
        overrides: [authChangeNotifierProvider.overrideWith((ref) => mockMyProvider)],
      );
      when(mockMyProvider.isAuthenticated).thenReturn(true);
      print(ref.read(authChangeNotifierProvider).isAuthenticated);
      verify(ref.read(authChangeNotifierProvider).isAuthenticated);
    });
  });
}
