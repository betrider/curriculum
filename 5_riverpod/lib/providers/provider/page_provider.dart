import 'package:flutter_riverpod/flutter_riverpod.dart';

final canGoToPreviousPageProvider = Provider<bool>((ref) {
  return ref.watch(pageIndexProvider) != 0;
});

final pageIndexProvider = StateProvider<int>((ref) => 0);
