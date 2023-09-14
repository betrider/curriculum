import 'package:dio/dio.dart';

// onRequest(1) -> 성공 -> onResponse -> 성공 -> 직렬화 -> response 반환
//              -> 실패 -> onError -> 일반 오류 -> DioException throw 전달
//                                   토큰 오류 -> (토큰 재발급 요청 -> 시작 -> onRequest -> 성공 -> onResponse -> 성공) -> onRequest(1) 이동
class SampleInterceptor extends Interceptor {
  
  /// Called when the request is about to be sent.
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    handler.next(options);
  }

  /// Called when the response is about to be resolved.
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    handler.next(response);
  }

  /// Called when an exception was occurred during the request.
  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(err);
  }
}
