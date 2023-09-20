import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  final formData = FormData.fromMap({
    'name': 'dio',
    'date': DateTime.now().toIso8601String(),
    'file': await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
  });
  final response = await dio.post('/info', data: formData);
}