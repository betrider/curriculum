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

  @POST("/tasks/{cc}")
  Future<dynamic> testMethod(
    @Queries() Map<String, dynamic> aa, // queryParameters 형식에 추가(addAll) 
    @Query('apikey') String bb, // queryParameters 형식에 추가
    @Path('cc') String cc, // path 파라미터용(link)
    @Body() RefreshTokenRequest dd, // class 형식으로 추가(1)
    @Field() String ff, // Map 형식으로 추가(2)
    @Part() String ee, // FormData 형식으로 추가(3)
  );
}