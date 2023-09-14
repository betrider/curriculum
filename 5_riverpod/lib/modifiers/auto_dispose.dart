import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeProvider = FutureProvider.autoDispose<String>((ref) async {
  return 'flutter';
});