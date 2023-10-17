import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 2),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FutureBuilderExample')),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.displayMedium!,
        textAlign: TextAlign.center,
        child: FutureBuilder<String>(
          future: _calculation, // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              children = <Widget>[
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Result: ${snapshot.data}'),
                ),
              ];
            } else if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                ),
              ];
            } else {
              children = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                ),
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            );
          },
        ),
      ),
    );
  }
}

/// json파일 변환(isolate)
Future<AudioScriptModel> parseInBackground() async {
  String jsonString = await rootBundle.loadString('assets/data.json');
  return compute(AudioScriptModel.fromMap, jsonString);
}

/// 오디오 스크립트
class AudioScriptModel {
  /// 문장으로 구성되어 있는 리스트입니다.
  List<Sentence> sentences;

  AudioScriptModel({
    required this.sentences,
  });

  factory AudioScriptModel.fromMap(String jsonString) {
    var map = json.decode(jsonString);
    return AudioScriptModel(
      sentences: map["sentences"] == null
          ? []
          : List<Sentence>.from(
              map["sentences"].map((x) => Sentence.fromMap(x))),
    );
  }
}

/// 문장
class Sentence {
  /// 문장 인덱스입니다. 0부터 시작하며 1씩 증가합니다.
  int index;

  /// 오디오 재생시 문장이 시작되는 시간입니다. (초단위)
  double startTime;

  /// 오디오 재생시 문장이 끝나는 시간입니다. (초단위)
  double endTime;

  /// 문장내 청크들의 리스트입니다.
  List<Chunk> chunks;

  Sentence({
    required this.index,
    required this.startTime,
    required this.endTime,
    required this.chunks,
  });

  factory Sentence.fromMap(Map<String, dynamic> map) {
    return Sentence(
      index: map["index"] as int,
      startTime: (map['startTime'] as num).toDouble(),
      endTime: (map['endTime'] as num).toDouble(),
      chunks: List<Chunk>.from(map["chunks"].map((x) => Chunk.fromMap(x))),
    );
  }
}

// 청크
class Chunk {
  /// 청크로 나눠진 텍스트입니다.
  String text;

  /// 오디오 재생시 청크가 시작되는 시간입니다. (밀리초단위)
  int startTime;

  /// 오디오 재생시 청크가 끝나는 시간입니다. (밀리초단위)
  int endTime;

  /// 문장내 청크 인덱스입니다. 0부터 시작하며 1씩 증가하며 문장과 관계없이 계속 증가합니다.
  int index;

  Chunk({
    required this.text,
    required this.startTime,
    required this.endTime,
    required this.index,
  });

  factory Chunk.fromMap(Map<String, dynamic> map) {
    return Chunk(
      text: map["text"] as String,
      startTime: ((map['startTime'] as num) * 1000).round(),
      endTime: ((map['endTime'] as num) * 1000).round(),
      index: map["index"] as int,
    );
  }
}
