import 'package:dio/dio.dart';

void main() async {
  try {
    var dio = Dio();
    // 404
    await dio.get('https://api.pub.dev/not-exist');
  } on DioException catch (e) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    if (e.response != null) {
      print(e.response!.data);
      print(e.response!.headers);
      print(e.response!.requestOptions);
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      print(e.requestOptions);
      print(e.message);
    }
  }
}
