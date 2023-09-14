import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log(
      name: 'riverpod(update)',
      '''
"provider": "${provider.name ?? provider.runtimeType}",
"stateValue": "$previousValue -> $newValue"''',
    );
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    log(
      name: 'riverpod(dispose)',
      '''
"provider": "${provider.name ?? provider.runtimeType}" didDisposeProvider''',
    );
  }

  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    log(
      name: 'riverpod(add)',
      '''
"provider": "${provider.name ?? provider.runtimeType}" didAddProvider''',
    );
  }
}
