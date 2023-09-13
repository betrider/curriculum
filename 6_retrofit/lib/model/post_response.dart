import 'package:json_annotation/json_annotation.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse {
  @JsonKey(name: 'userId')
  final int userId;
  @JsonKey(includeFromJson: true, includeToJson: true)
  final int id;
  @JsonKey(readValue: readValue)
  final String title;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final String body;
  
  PostResponse({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostResponse.fromJson(Map<String, dynamic> json) => _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);

  /// 파라미터
  /// 
  /// 데이터 전체(map), 고유키(key)
  static dynamic readValue(Map map, String key) {
    return map[key];
  }

  /// 파라미터
  /// 
  /// json['body']
  static String _fromJson(dynamic json) {
    var result = json as String;
    return '$result:_fromJson';
  }

  /// 파라미터
  /// 
  /// PostResponse._toJson(instance.body)
  static String _toJson(dynamic json) {
    var result = json as String;
    return '$result:_toJson';
  }
}
