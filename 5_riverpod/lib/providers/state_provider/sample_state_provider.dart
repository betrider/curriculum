


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider = StateProvider<int>((ref) {
  return 0;
});

class StateSampleWidget extends ConsumerWidget {
  const StateSampleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. watch the provider and rebuild when the value changes
    final counter = ref.watch(stateProvider);
    return ElevatedButton(
      // 4. use the value
      child: Text('Value: $counter'),
      // 5. change the state inside a button callback
      onPressed: () => ref.read(stateProvider.notifier).state++,
    );
  }
}