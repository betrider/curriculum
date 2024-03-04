// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:json_pretty/json_pretty.dart';

// dart run :localization_generate

void main() async {
  // csv -> json파일로 변환
  await separateCSVFile();

  // json 파일 -> codegen_loader.g 생성
  await runScript('flutter pub run easy_localization:generate -S assets/translations');

  // json 파일 -> locale_keys.g 생성
  await runScript('flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations');

  // json 파일 삭제
  await runScript('find ./assets/translations/ -name *.json -type f -delete');
}

/// .csv 파일 -> .json 파일로 변환
Future<void> separateCSVFile() async {
  final csvFile = File('assets/translations/langs.csv');
  final lines = await csvFile.readAsLines();

  // CSV 헤더 추출
  List<String> headers = lines[0].split(',');

  // 각 언어에 대한 Map 초기화
  Map<String, dynamic> enUSData = {};
  Map<String, dynamic> koKRData = {};

  // 각 헤더에 대한 데이터 추출
  for (int i = 1; i < lines.length; i++) {
    List<String> row = lines[i].split(',');

    // 헤더와 데이터를 매핑하여 Map에 추가
    Map<String, dynamic> rowData = {};
    for (int j = 0; j < headers.length; j++) {
      rowData[headers[j]] = row[j];
    }

    createNestedMap(enUSData, rowData['str'], rowData['en_US']);
    createNestedMap(koKRData, rowData['str'], rowData['ko_KR']);
  }

  // JSON 문자열로 변환
  String enUSJsonString = jsonEncode(enUSData);
  String koKRJsonString = jsonEncode(koKRData);

  // JSON 문자열을 파일에 쓰기
  final enUSJsonFile = File('assets/translations/en_US.json');
  final koKRJsonFile = File('assets/translations/ko_KR.json');
  await enUSJsonFile.writeAsString(prettyPrintJson(enUSJsonString));
  await koKRJsonFile.writeAsString(prettyPrintJson(koKRJsonString));
}

/// 중첩키 map으로 분리
///
/// profile.reset_password.label -> {'profile':{'reset_password':{'label':''}}}
void createNestedMap(Map map, String path, dynamic data) {
  List<String> keys = path.split('.');
  var sampleMap = {};

  if (keys.length == 1) {
    map.putIfAbsent(keys[0], () => data);
  } else {
    for (var i = 0; i < keys.length; i++) {
      if (i == 0) {
        map.putIfAbsent(keys[i], () => {});
        sampleMap = map;
      } else {
        sampleMap = sampleMap[keys[i - 1]];
        if (i == keys.length - 1) {
          sampleMap.putIfAbsent(keys[i], () => data);
        } else {
          sampleMap.putIfAbsent(keys[i], () => {});
        }
      }
    }
  }
}

/// 스크립트 실행 함수
Future<void> runScript(String cmd, {String? dir, bool skipError = false}) async {
  List<String> args = cmd.split(' ');
  String command = args.first;
  List<String> options = args.length > 1 ? args.getRange(1, args.length).toList() : [];

  ProcessResult result = await Process.run(
    command,
    options,
    workingDirectory: dir,
  );

  print(result.stdout);

  if (!skipError && result.stderr != '') {
    throw Exception(result.stderr);
  }
}
