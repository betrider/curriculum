import 'package:dio/dio.dart';

void main() async{
  var dio = Dio();
  dio.interceptors.add(CustomInterceptors());

  var dio2 = Dio();
  dio2.interceptors.add(
  InterceptorsWrapper(
    onRequest: (options, handler) {
      return handler.resolve(
        Response(requestOptions: options, data: 'fake data'),
      );
    },
  ),
);
}

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}

