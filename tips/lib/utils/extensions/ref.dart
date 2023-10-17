import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final _debounceCompleter = <Ref, Completer<void>>{};
final _debounceTimer = <Ref, Timer>{};

extension RefExtension on Ref {
  Future<void> debounce(Duration duration) {
    
    // 기존 데이터 제거
    if (_debounceCompleter.containsKey(this)) {
      _debounceTimer[this]!.cancel();
      final completer = _debounceCompleter[this]!;
      if (completer.isCompleted == false) {
        _debounceCompleter[this]!.completeError(StateError('cancelled'));
      }
    }

    // 컴플리터 선언
    _debounceCompleter[this] = Completer<void>();

    // 타이머 선언
    _debounceTimer[this] = Timer(
      duration,
      () {
        // 타이머 완료 시
        final completer = _debounceCompleter[this]!;
        if (!completer.isCompleted) {
          completer.complete();
        }
      },
    );

    return _debounceCompleter[this]!.future;
  }
}