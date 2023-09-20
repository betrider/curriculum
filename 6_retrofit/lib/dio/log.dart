import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main(){
  var dio = Dio();
  dio.interceptors.add(LogInterceptor(responseBody: false));

  var dio2 = Dio();
  dio2.interceptors.add(PrettyDioLogger());

  var dio3 = Dio();
  dio3.interceptors.add(CustomLogInterceptor());
}

class CustomLogInterceptor extends Interceptor {
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
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('ERROR[${err.response!.data['statusCode']}] => ${err.error}: ${err.message}');
    super.onError(err, handler);
  }
}