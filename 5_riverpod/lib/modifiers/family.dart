import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyProvider = FutureProvider.family<String, int>((ref, userId) async {
  return 'flutter';
});