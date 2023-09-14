// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationNotifierProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) {
    ref.listenSelf((previous, next) {
      if (previous != null) {
        if (next is Authenticated) {
          print('로그인 되었습니다.');
        }
        if (next is Unauthenticated) {
          print('로그아웃 되었습니다.');
        }
      }
    });
    return AuthStateNotifier(ref);
  },
  name: 'authenticationNotifierProvider',
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this.ref) : super(const AuthInitial());

  final Ref ref;

  //로그인
  Future<void> login() async {
    state = const Authenticated('token');
  }

  //로그아웃
  void logout() {
    state = const Unauthenticated();
  }
}

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class Authenticated extends AuthState {
  final String token;

  const Authenticated(this.token);
}

class Unauthenticated extends AuthState {
  const Unauthenticated();
}
