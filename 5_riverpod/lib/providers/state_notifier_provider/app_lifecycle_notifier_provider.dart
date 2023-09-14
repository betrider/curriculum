import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appLifecycleStateNotifierProvider = StateNotifierProvider<AppLifecycleStateNotifier, AppLifecycleState>(
  (ref) {
    return AppLifecycleStateNotifier();
  },
  name: 'appLifecycleStateNotifierProvider',
);

class AppLifecycleStateNotifier extends StateNotifier<AppLifecycleState> with WidgetsBindingObserver {
  AppLifecycleStateNotifier() : super(AppLifecycleState.resumed) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        this.state = AppLifecycleState.resumed;
        break;
      case AppLifecycleState.inactive:
        this.state = AppLifecycleState.inactive;
        break;
      case AppLifecycleState.paused:
        this.state = AppLifecycleState.paused;
        break;
      case AppLifecycleState.detached:
        this.state = AppLifecycleState.detached;
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }
}
