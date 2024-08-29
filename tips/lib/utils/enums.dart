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

  static NetworkStatusCode getNetworkStatusCode(DioException err) {
    return NetworkStatusCode.values.firstWhere(
      (element) => element.code == err.response?.statusCode,
      orElse: () => NetworkStatusCode.notFound,
    );
  }

  @override
  String toString() {
    return 'Error(code:$code, message:$message)';
  }
}

void test() {
  NetworkStatusCode.badRequest.toString();
}
