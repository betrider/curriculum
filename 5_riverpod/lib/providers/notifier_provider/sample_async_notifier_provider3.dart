import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncNotifierProvider3 = AsyncNotifierProvider.autoDispose<SampleAsyncNotifier3, SampleAsyncState3>(SampleAsyncNotifier3.new);

class SampleAsyncNotifier3 extends AsyncNotifier<SampleAsyncState3> {
  @override
  FutureOr<SampleAsyncState3> build() {
    return const SampleAsyncState3(
      title: "Sample",
    );
  }

  /// 상태 데이터 업데이트
  void updateTitle() {
    state = const AsyncLoading();
    try {
      _state = _state.copyWith(title: "New Title");
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  /// 상태 데이터 불러오기
  SampleAsyncState3 get _state => state.value!;

  /// 상태 데이터 저장하기
  set _state(SampleAsyncState3 newState) {
    state = AsyncData(newState);
  }
}

// 상태
class SampleAsyncState3 extends Equatable {
  final String title;

  const SampleAsyncState3({
    required this.title,
  });

  SampleAsyncState3 copyWith({
    String? title,
  }) {
    return SampleAsyncState3(
      title: title ?? this.title,
    );
  }

  @override
  List<Object> get props => [title];
}
