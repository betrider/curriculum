// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: PostResponse.readValue(json, 'title') as String,
      body: PostResponse._fromJson(json['body']),
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': PostResponse._toJson(instance.body),
    };
