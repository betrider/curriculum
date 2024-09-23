import 'dart:convert';
import 'dart:developer';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:excel/excel.dart';
import 'package:json_pretty/json_pretty.dart';

// dart run :console

void main() async {
  const int keyColumnIndex = 0;
  const int koKrColumnIndex = 1;
  const int enUsColumnIndex = 2;
  const int jaJPColumnIndex = 3;

  var file = 'assets/translations/qr_langs.xlsx';
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);
  var table = 'Worksheet';

  // 각 언어에 대한 Map 초기화
  Map<String, dynamic> koKRData = {};
  Map<String, dynamic> enUSData = {};
  Map<String, dynamic> jaJPData = {};

  for (var rowIndex = 0; rowIndex < excel.tables[table]!.maxRows; rowIndex++) {
    var keyValue = excel.tables[table]!.rows[rowIndex][keyColumnIndex]!.value.toString();

    var koKRValue = excel.tables[table]!.rows[rowIndex][koKrColumnIndex]!.value.toString();
    createNestedMap(koKRData, keyValue, koKRValue);

    var enUsValue = excel.tables[table]!.rows[rowIndex][enUsColumnIndex]!.value.toString();
    createNestedMap(enUSData, keyValue, enUsValue);

    var jaJPValue = excel.tables[table]!.rows[rowIndex][jaJPColumnIndex]!.value.toString();
    createNestedMap(jaJPData, keyValue, jaJPValue);
  }

  // JSON 문자열로 변환
  String koKRJsonString = jsonEncode(koKRData);
  String enUSJsonString = jsonEncode(enUSData);
  String jaJPJsonString = jsonEncode(jaJPData);

  // JSON 문자열을 파일에 쓰기
  final koKRJsonFile = File('assets/translations/ko_KR.json');
  final enUSJsonFile = File('assets/translations/en_US.json');
  final jaJPJsonFile = File('assets/translations/ja_JP.json');
  await koKRJsonFile.writeAsString(prettyPrintJson(koKRJsonString));
  await enUSJsonFile.writeAsString(prettyPrintJson(enUSJsonString));
  await jaJPJsonFile.writeAsString(prettyPrintJson(jaJPJsonString));

  log('Conversion complete.');

  // 터미널 명령어 실행

  // codegen_loader.g 생성
  await execute('flutter pub run easy_localization:generate -S assets/translations -O lib/utils/localization');

  // locale_keys.g 생성
  await execute(
      'flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations -O lib/utils/localization');

  // .json 파일 삭제
  await File('assets/translations/ko_KR.json').delete();
  await File('assets/translations/en_US.json').delete();
  await File('assets/translations/ja_JP.json').delete();
}

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

Future<void> execute(String cmd, {String? dir, bool skipError = false}) async {
  var args = cmd.split(' ');
  var command = args.first;
  List<String> options = args.length > 1 ? args.getRange(1, args.length).toList() : [];

  var result = await Process.run(
    command,
    options,
    workingDirectory: dir,
  );

  log(result.stdout);

  if (!skipError && result.stderr != '') {
    throw Exception(result.stderr);
  }
}
