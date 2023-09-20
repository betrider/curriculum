// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

void main() async {

  var dio = Dio();

  dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  dio.options.connectTimeout = const Duration(seconds: 5); //5초
  dio.options.receiveTimeout = const Duration(seconds: 3); //3초

  var options = BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    connectTimeout: const Duration(seconds: 5), //5초
    receiveTimeout: const Duration(seconds: 3), //3초
  );

  Dio dio2 = Dio(options);
}


// BaseOptions 객체
// BaseOptions({
//   String? method,
//   int? connectTimeout,
//   int? receiveTimeout,
//   int? sendTimeout,
//   String baseUrl = '',
//   Map<String, dynamic>? queryParameters,
//   Map<String, dynamic>? extra,
//   Map<String, dynamic>? headers,
//   ResponseType? responseType = ResponseType.json,
//   String? contentType,
//   ValidateStatus? validateStatus,
//   bool? receiveDataWhenStatusError,
//   bool? followRedirects,
//   int? maxRedirects,
//   RequestEncoder? requestEncoder,
//   ResponseDecoder? responseDecoder,
//   ListFormat? listFormat,
//   this.setRequestContentTypeWhenNoPayload = false,
// })