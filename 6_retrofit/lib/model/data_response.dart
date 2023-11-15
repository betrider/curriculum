import 'package:json_annotation/json_annotation.dart';

part 'data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataResponse<T> {
  final int code;
  final String message;
  final T data;

  DataResponse({
    required this.code,
    required this.message,
    required this.data,
  });

  /// 성공 여부
  bool get isSuccess => code == NetworkStatusCode.ok.code;

  /// 데이터 비어있는지 확인
  bool get isNullOrEmpty {
    if (data is Iterable) {
      return (data as Iterable).isEmpty;
    } else {
      return data == null;
    }
  }

  factory DataResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$DataResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$DataResponseToJson<T>(this, toJsonT);
}

/// 네트워크 상태코드
enum NetworkStatusCode {
  /// 성공
  ok(200, 'OK'),

  /// 생성 성공
  created(201, 'Created'),

  /// 잘못된 요청
  badRequest(400, 'Bad Request'),

  /// 권한 없음
  unauthorized(401, 'Unauthorized'),

  /// 접근 금지
  forbidden(403, 'Forbidden'),

  /// 찾을 수 없음
  notFound(404, 'Not Found'),

  /// 내부 서버 오류
  internalServerError(500, 'Internal Server Error'),

  /// 구현되지 않음
  notImplemented(501, 'Not Implemented');

  const NetworkStatusCode(this.code, this.message);

  final int code;
  final String message;
}
