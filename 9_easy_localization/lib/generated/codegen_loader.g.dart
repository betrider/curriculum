// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ko_KR = {
  "title": "안녕하세요",
  "msg": "안녕하세요 {}의 세계에서",
  "msg_named": "{}은(는) {lang} 언어로 쓰여져 있습니다",
  "clickMe": "여기를 클릭해주세요",
  "profile": {
    "reset_password": {
      "label": "비밀번호 재설정",
      "username": "사용자 이름",
      "password": "비밀번호"
    }
  },
  "clicked": {
    "zero": "{}번 클릭했습니다!",
    "one": "{}번 클릭했습니다!",
    "two": "{}번 클릭했습니다!",
    "few": "{}번 클릭했습니다!",
    "many": "{}번 클릭했습니다!",
    "other": "{}번 클릭했습니다!"
  },
  "amount": {
    "zero": "당신의 금액: {} ",
    "one": " 당신의 금액: {} ",
    "two": " 당신의 금액: {} ",
    "few": " 당신의 금액: {} ",
    "many": " 당신의 금액: {} ",
    "other": " 당신의 금액: {} "
  },
  "gender": {
    "male": " 안녕하세요 남성 ;)",
    "female": " 안녕하세요 여성 :)",
    "with_arg": {
      "male": "{} 안녕하세요 남성",
      "female": "{} 안녕하세요 여성"
    }
  },
  "reset_locale": "언어 재설정"
};
static const Map<String,dynamic> en_US = {
  "title": "Hello",
  "msg": "Hello {} in the {} world ",
  "msg_named": "{} are written in the {lang} language",
  "clickMe": "Click me",
  "profile": {
    "reset_password": {
      "label": "Reset Password",
      "username": "Username",
      "password": "password"
    }
  },
  "clicked": {
    "zero": "You clicked {} times!",
    "one": "You clicked {} time!",
    "two": "You clicked {} times!",
    "few": "You clicked {} times!",
    "many": "You clicked {} times!",
    "other": "You clicked {} times!"
  },
  "amount": {
    "zero": "Your amount : {} ",
    "one": "Your amount : {} ",
    "two": "Your amount : {} ",
    "few": "Your amount : {} ",
    "many": "Your amount : {} ",
    "other": "Your amount : {} "
  },
  "gender": {
    "male": "Hi man ;) ",
    "female": "Hello girl :)",
    "with_arg": {
      "male": "Hi man ;) {}",
      "female": "Hello girl :) {}"
    }
  },
  "reset_locale": "Reset Language"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ko_KR": ko_KR, "en_US": en_US};
}
