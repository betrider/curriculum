import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authChangeNotifierProvider = ChangeNotifierProvider<AuthChangeNotifier>((ref) {
  return AuthChangeNotifier();
});

class AuthChangeNotifier extends ChangeNotifier {
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
