import 'package:dio/dio.dart';

/// 권한 상태코드
enum AuthState {
  authorized,
  unauthorized,
}

/// 네트워크 상태코드
enum NetworkStatusCode {
  /// 성공
  ok(200, '200 error'),

  /// 생성 성공
  created(201, '201 error'),

  /// 잘못된 요청
  badRequest(400, '400 error'),

  /// 권한 없음
  unauthorized(401, 'INVALID_ACCESS_TOKEN'),

  /// 접근 금지
  forbidden(403, '403 error'),

  /// 찾을 수 없음
  notFound(404, '404 error'),

  /// 내부 서버 오류
  internalServerError(500, '500 error'),

  /// 구현되지 않음
  notImplemented(501, '501 error');

  const NetworkStatusCode(this.code, this.message);

  final int code;
  final String message;

  static int getNetworkStatusCode(DioException err) {
    if (err.error == NetworkStatusCode.ok.message) {
      return NetworkStatusCode.ok.code;
    } else if (err.error == NetworkStatusCode.created.message) {
      return NetworkStatusCode.created.code;
    } else if (err.error == NetworkStatusCode.badRequest.message) {
      return NetworkStatusCode.badRequest.code;
    } else if (err.error == NetworkStatusCode.unauthorized.message) {
      return NetworkStatusCode.unauthorized.code;
    } else if (err.error == NetworkStatusCode.forbidden.message) {
      return NetworkStatusCode.forbidden.code;
    } else if (err.error == NetworkStatusCode.notFound.message) {
      return NetworkStatusCode.notFound.code;
    } else if (err.error == NetworkStatusCode.internalServerError.message) {
      return NetworkStatusCode.internalServerError.code;
    } else if (err.error == NetworkStatusCode.notImplemented.message) {
      return NetworkStatusCode.notImplemented.code;
    } else {
      return err.response?.statusCode ?? 404;
    }
  }

  @override
  String toString() {
    return 'Error(code:$code, message:$message)';
  }
}
