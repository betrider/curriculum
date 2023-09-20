import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(
      const MaterialApp(
        home: ImageDownloadScreen(
          imageUrl:
              'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F996333405A8280FC23', // 다운로드할 이미지 URL을 여기에 입력하세요.
        ),
      ),
    );

class ImageDownloadScreen extends StatefulWidget {
  final String imageUrl;

  const ImageDownloadScreen({super.key, required this.imageUrl});

  @override
  ImageDownloadScreenState createState() => ImageDownloadScreenState();
}

class ImageDownloadScreenState extends State<ImageDownloadScreen> {
  double _progress = 0.0;
  late final Directory appDirectory;
  late final String savePath;

  void _downloadImage() async {
    Dio dio = Dio();
    appDirectory = await getApplicationDocumentsDirectory();
    savePath = '${appDirectory.path}/downloaded_image.jpg';

    try {
      await dio.download(
        widget.imageUrl,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              _progress = received / total;
              print(_progress);
            });
          }
        },
      );
      // 다운로드 완료 후에 여기에 추가적인 작업을 수행할 수 있습니다.
      // 예를 들어 이미지를 표시하는 방법 등을 추가할 수 있습니다.
    } catch (e) {
      print('다운로드 에러: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 다운로드'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_progress == 1.0) ...[
              SizedBox(
                width: double.infinity,
                height: 300,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.file(File(savePath)),
                ),
              ),
            ] else ...[
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.grey[600],
                child: Center(
                  child: Text(
                    '${(_progress * 100).toStringAsFixed(0)}%',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _downloadImage,
              child: const Text('이미지 다운로드'),
            ),
          ],
        ),
      ),
    );
  }
}
