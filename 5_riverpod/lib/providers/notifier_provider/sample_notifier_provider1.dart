import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifierProvider1 = NotifierProvider<Counter1, int>(Counter1.new);

// final counterProvider = NotifierProvider<Counter, int>(() {
//   return Counter();
// });

// ------------------------------------------------------------------------------

class Counter1 extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}

// ------------------------------------------------------------------------------

class NotifierSampleWidget1 extends ConsumerWidget {
  const NotifierSampleWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. watch the provider and rebuild when the value changes
    final counter = ref.watch(counterNotifierProvider1);
    return ElevatedButton(
      // 4. use the value
      child: Text('Value: $counter'),
      // 5. change the state inside a button callback
      onPressed: () => ref.read(counterNotifierProvider1.notifier).increment(),
    );
  }
}
