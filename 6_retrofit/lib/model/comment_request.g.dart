// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentRequest _$CommentRequestFromJson(Map<String, dynamic> json) =>
    CommentRequest(
      postId: json['postId'] as int?,
      postId2: json['postId2'] as int?,
    );

Map<String, dynamic> _$CommentRequestToJson(CommentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('postId', instance.postId);
  writeNotNull('postId2', instance.postId2);
  return val;
}
