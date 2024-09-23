// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ko_KR = {
  "str": "ko_KR",
  "language": "한국어"
};
static const Map<String,dynamic> ja_JP = {
  "str": "ja_JP",
  "language": "日本語"
};
static const Map<String,dynamic> en_US = {
  "str": "en_US",
  "language": "english"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ko_KR": ko_KR, "ja_JP": ja_JP, "en_US": en_US};
}
