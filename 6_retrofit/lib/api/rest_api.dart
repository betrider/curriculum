import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_widget/model/comment_response.dart';
import 'package:flutter_widget/model/model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/refresh')
  Future<RefreshTokenResponse> refreshToken(@Body() RefreshTokenRequest request);

  @GET('/posts')
  Future<List<PostResponse>> getPosts1();

  @GET('/posts/{postId}')
  Future<PostResponse> getPosts2(@Path("postId") String postId);

  @GET('/posts/{postId}/comments')
  Future<List<CommentResponse>> getComments1(@Path("postId") String postId);

  @GET('/comments')
  Future<List<CommentResponse>> getComments2(@Queries() CommentRequest request);

  @POST('/posts')
  Future<dynamic> postPosts();

  @PUT('/posts/{postId}')
  Future<dynamic> putPosts(@Path("postId") String postId);

  @PATCH('/posts/{postId}')
  Future<dynamic> patchPosts(@Path("postId") String postId);

  @DELETE('/posts/{postId}')
  Future<dynamic> deletePosts(@Path("postId") String postId);
}