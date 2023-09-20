// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();

  // 첫번째 방법
  final response1 = await dio.get('/comments?postId=1');

  // 두번째 방법
  final response2 = await dio.get('/comments', queryParameters: {'postId': 1});

  // 세번째 방법
  final response3 = await dio.request(
    '/comments',
    data: {'postId': 1},
    options: Options(method: 'GET'),
  );

  // post
  final response4 = await dio.post('/posts', data: {'id': 12, 'name': 'wendu'});
}
