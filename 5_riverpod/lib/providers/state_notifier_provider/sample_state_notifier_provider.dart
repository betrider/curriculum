import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LoginState { none, email, naver, facebook, apple }

final loginStateProvider = StateNotifierProvider<LoginStateNotifier, LoginState>((ref) {
  return LoginStateNotifier();
});

class LoginStateNotifier extends StateNotifier<LoginState> {
  LoginStateNotifier() : super(LoginState.none);

  void doEmailLogin() {
    state = LoginState.email;
  }

  void doNaverLogin() {
    state = LoginState.naver;
  }

  void doFacebookLogin() {
    state = LoginState.facebook;
  }

  void doAppleLogin() {
    state = LoginState.apple;
  }
}

class SampleWidget3 extends StatelessWidget {
  const SampleWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          var loginState = ref.watch(loginStateProvider);
          return Text(loginState.name);
        },
      ),
    );
  }
}
