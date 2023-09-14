// 1. add the necessary imports
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider1 = AsyncNotifierProvider<AuthController1, void>(AuthController1.new);

// final authControllerProvider = AsyncNotifierProvider<AuthController, void>(() {
//   return AuthController();
// });

// ------------------------------------------------------------------------------

// 2. extend [AsyncNotifier]
class AuthController1 extends AsyncNotifier<void> {
// ignore: avoid_public_notifier_properties
  late ProviderListenable authRepositoryProvider; // 임시 변수

  // 3. override the [build] method to return a [FutureOr]
  @override
  FutureOr<void> build() {
    // 4. return a value (or do nothing if the return type is void)
  }

  Future<void> signInAnonymously() async {
    // 5. read the repository using ref
    final authRepository = ref.read(authRepositoryProvider);
    // 6. set the loading state
    state = const AsyncLoading();
    // 7. sign in and update the state (data or error)
    state = await AsyncValue.guard(authRepository.signInAnonymously);
  }
}

// ------------------------------------------------------------------------------

class AsyncNotifierSampleWidget extends ConsumerWidget {
  const AsyncNotifierSampleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // returns AsyncLoading on first load,
    // rebuilds with the new value when the initialization is complete
    final valueAsync = ref.watch(authControllerProvider1);
    return valueAsync.when(
      data: (data) {
        return const Text('Success');
      },
      error: (error, stackTrace) {
        return const Text('Error');
      },
      loading: () {
        return const Text('Loading');
      },
    );
  }
}
