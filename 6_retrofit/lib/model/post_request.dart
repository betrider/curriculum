import 'package:json_annotation/json_annotation.dart';

part 'post_request.g.dart';

@JsonSerializable(includeIfNull: false)
class PostRequest {
  @JsonKey(name: 'post_id')
  final int? postId;

  PostRequest({
    this.postId,
  });

  factory PostRequest.fromJson(Map<String, dynamic> json) => _$PostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostRequestToJson(this);
}
