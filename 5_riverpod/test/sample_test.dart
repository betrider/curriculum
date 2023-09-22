// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late final ProviderContainer ref;

  setUpAll(() async {
    print('setUpAll');
    // sharedPreference test모드 적용(필수)
    SharedPreferences.setMockInitialValues({});
    // sharedPreference 생성
    var prefs = await SharedPreferences.getInstance();
    // ref 생성
    ref = ProviderContainer(overrides: [sharedPreferencesProvider.overrideWithValue(prefs)]);
  });

  test('shared test', () {
    var shared = ref.read(sharedPreferencesProvider);
    shared.setInt('test', 5555);

    int value = shared.getInt('test') ?? 0;

    expect(value, 5555);
  });

  tearDownAll(() {
    print('tearDownAll');
    ref.read(sharedPreferencesProvider).clear();
  });
}

/// 내부 스토리지 프로바이더
final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
  name: 'sharedPreferencesProvider',
);