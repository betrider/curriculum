// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeNotifierProvider = ChangeNotifierProvider<CountNotifier>((ref) {
  return CountNotifier();
});

class CountNotifier extends ChangeNotifier {
  int _count = 0;
  int get count => _count; // get 함수를 사용해 외부에서 접근이 가능하게 한다.

  // 더하기
  add() {
    _count++;
    notifyListeners(); // notifyListeners 호출해 업데이트된 값을 구독자에게 알림
  }

  // 빼기
  remove() {
    _count--;
    notifyListeners(); // notifyListeners 호출해 업데이트된 값을 구독자에게 알림
  }
}

class ChangeNotifierSampleWidget extends ConsumerWidget {
  const ChangeNotifierSampleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. watch the provider and rebuild when the value changes
    final counter = ref.watch(changeNotifierProvider);
    return ElevatedButton(
      // 4. use the value
      child: Text('Value: $counter'),
      // 5. change the state inside a button callback
      onPressed: () => ref.read(changeNotifierProvider.notifier).add(),
    );
  }
}
