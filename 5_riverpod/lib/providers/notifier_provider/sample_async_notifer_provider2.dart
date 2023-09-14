
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncNotifierProvider2 = AsyncNotifierProvider<CounterAsyncNotifier2, int>(CounterAsyncNotifier2.new);

class CounterAsyncNotifier2 extends AsyncNotifier<int>{

  @override
  FutureOr<int> build() {
    return getData();
    // return Future.value(5);
  }

  // 일반
  void increment() async{
    try {
      state = const AsyncValue.loading();
      state = AsyncData(await getData());
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  // guard 사용
  void increment2() async{
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => getData());
  }

  // 데이터 가져오기
  Future<int> getData() async{
    await Future.delayed(const Duration(seconds: 5));
    return 5;
  }
}