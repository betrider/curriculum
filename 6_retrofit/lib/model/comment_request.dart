import 'package:json_annotation/json_annotation.dart';

part 'comment_request.g.dart';

/// includeIfNull: false => https://jsonplaceholder.typicode.com/comments?postId=1
/// includeIfNull: true => https://jsonplaceholder.typicode.com/comments?postId=1&postId2
@JsonSerializable()
class CommentRequest {
  final int? postId;
  final int? postId2;

  CommentRequest({
    this.postId,
    this.postId2,
  });

  factory CommentRequest.fromJson(Map<String, dynamic> json) => _$CommentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CommentRequestToJson(this);
}
