import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// 로그 클래스 호출
///
/// ```dart
/// logger.d('Log message with 2 methods');
/// logger.w('Error! Something bad happened', stackTrace: StackTrace.current);
/// ```
var logger = Logger(
  level: kDebugMode ? Level.all : Level.warning,
  printer: _SimpleLogPrinter(),
  output: _SimpleLogOutput(),
);

var loggerDetail = Logger(
  level: kDebugMode ? Level.all : Level.warning,
  printer: PrettyPrinter(methodCount: 0),
);

class _SimpleLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    List<String> lines = event.message.toString().split('\n');
    switch (event.level) {
      // live  ------------------------------------------------------------
      case Level.fatal: // 오류(system)
        return lines.map((text) => '\x1B[37m📋 $text\x1B[0m').toList();
      case Level.error: // 오류(repositoy & data)
        return lines.map((text) => '\x1B[31m📕 $text\x1B[0m').toList();
      case Level.warning: // 경고(provider)
        return lines.map((text) => '\x1B[38;5;208m📙 $text\x1B[0m').toList();
      // debug ------------------------------------------------------------
      case Level.info: // 정보
        return lines.map((text) => '\x1B[33m📔 $text\x1B[0m').toList();
      case Level.debug: // 디버그
        return lines.map((text) => '\x1B[38;5;249m📓[debug] $text\x1B[0m').toList();
      case Level.trace: // 추적(정보 x)
        return lines.map((text) => '\x1B[92m📗 $text\x1B[0m').toList();
      default:
        return lines.map((text) => '\x1B[31m📕 $text\x1B[0m').toList();
    }
  }
}

void showErrorLog({required Object error, required StackTrace stackTrace}) {
  CustomStackTraceService currentTrace = CustomStackTraceService(stackTrace);
  StringBuffer buffer = StringBuffer();
  buffer.write('파일명 : ${currentTrace.fileName}:${currentTrace.lineNumber}');
  buffer.writeln();
  buffer.write('상위 호출 메서드 : ${currentTrace.callerFunctionName}()');
  buffer.writeln();
  buffer.write('호출 메서드 : ${currentTrace.functionName}()');
  buffer.writeln();
  buffer.write('오류 메시지 : ${error.toString()}');
  if (error is DioException) {
    buffer.writeln();
    buffer.write('응답 오류 : ${error.response?.data['message']}');
    buffer.writeln();
    buffer.write('응답 상태 오류 : ${error.response?.data['error']}');
  }
  loggerDetail.e(
    buffer,
    stackTrace: stackTrace,
  );
}

class _SimpleLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    String name = event.level.name;
    for (var line in event.lines) {
      log(
        line,
        name: event.origin.stackTrace == null ? name : '$name - ${getFileAndLineName(event.origin.stackTrace!)}',
      );
    }
  }

  String getFileAndLineName(StackTrace trace) {
    var customTrace = CustomStackTraceService(trace);
    return '${customTrace.fileName}:${customTrace.lineNumber}';
  }
}

class CustomStackTraceService {
  final StackTrace _trace;

  late String fileName;
  late String functionName;
  late String callerFunctionName;
  late int lineNumber;

  CustomStackTraceService(this._trace) {
    _parseTrace();
  }

  String _getFunctionNameFromFrame(String frame) {
    /* Just giving another nickname to the frame */
    var currentTrace = frame;

    /* To get rid off the #number thing, get the index of the first whitespace */
    var indexOfWhiteSpace = currentTrace.indexOf(' ');

    /* Create a substring from the first whitespace index till the end of the string */
    var subStr = currentTrace.substring(indexOfWhiteSpace);

    /* Grab the function name using reg expr */
    var indexOfFunction = subStr.indexOf(RegExp(r'[A-Za-z0-9]'));

    /* Create a new substring from the function name index till the end of string */
    subStr = subStr.substring(indexOfFunction);

    indexOfWhiteSpace = subStr.indexOf(' ');

    /* Create a new substring from start to the first index of a whitespace. This substring gives us the function name */
    subStr = subStr.substring(0, indexOfWhiteSpace);

    return subStr;
  }

  void _parseTrace() {
    /* The trace comes with multiple lines of strings, (each line is also known as a frame), so split the trace's string by lines to get all the frames */
    var frames = _trace.toString().split("\n");

    /* The first frame is the current function */
    functionName = _getFunctionNameFromFrame(frames[0]);

    try {
      /* The second frame is the caller function */
      callerFunctionName = _getFunctionNameFromFrame(frames[2]);
    } catch (e) {
      callerFunctionName = '';
    }

    /* The first frame has all the information we need */
    var traceString = frames[0];

    /* Search through the string and find the index of the file name by looking for the '.dart' regex */
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Z_a-z]+.dart'));

    var fileInfo = traceString.substring(indexOfFileName);

    var listOfInfos = fileInfo.split(":");

    /* Splitting fileInfo by the character ":" separates the file name, the line number and the column counter nicely.
      Example: main.dart:5:12
      To get the file name, we split with ":" and get the first index
      To get the line number, we would have to get the second index
      To get the column number, we would have to get the third index
    */

    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
  }
}
