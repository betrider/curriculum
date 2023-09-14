import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifierProvider2 = NotifierProvider.family<Counter2, int, String>(Counter2.new);

// final counterProvider = NotifierProvider<Counter, int>(() {
//   return Counter();
// });

// ------------------------------------------------------------------------------

class Counter2 extends FamilyNotifier<int, String> {
  @override
  int build(String arg) {
    return 0;
  }

  void increment() {
    state++;
  }
}

// ------------------------------------------------------------------------------

class NotifierSampleWidget2 extends ConsumerWidget {
  const NotifierSampleWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. watch the provider and rebuild when the value changes
    final counter = ref.watch(counterNotifierProvider2('key'));
    return ElevatedButton(
      // 4. use the value
      child: Text('Value: $counter'),
      // 5. change the state inside a button callback
      onPressed: () => ref.read(counterNotifierProvider2('key').notifier).increment(),
    );
  }
}
