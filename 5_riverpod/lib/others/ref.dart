// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final refProvider = StateProvider<int>((ref) {
  ref.onResume(() {
    print('onResume');
  });

  ref.onAddListener(() {
    print('onAddListener');
  });

  ref.onCancel(() {
    print('onCancel');
  });

  ref.onDispose(() {
    print('onDispose');
  });

  ref.listenSelf((previous, next) {
    print('listenSelf previous:$previous next:$next');
  });

  ref.invalidateSelf();

  ref.onRemoveListener(() { 
    print('onRemoveListener');
  });

  return 0;
});

class RefSampleWidget extends ConsumerStatefulWidget {
  const RefSampleWidget({super.key});

  @override
  ConsumerState<RefSampleWidget> createState() => _RefSampleWidgetState();
}

class _RefSampleWidgetState extends ConsumerState<RefSampleWidget> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(refProvider, (previous, next) {
      /// ...
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(refProvider, (previous, next) {
      /// ...
    });
    var result = ref.watch(refProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ref 예제'),
      ),
      body: Center(child: Text('count:$result')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(refProvider.notifier).update((state) => state + 1);

          // ref.refresh(refProvider)
          // ==
          // ref.invalidate(refProvider);
          // ref.read(refProvider);

        },
      ),
    );
  }
}
