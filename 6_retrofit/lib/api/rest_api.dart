import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_widget/model/post_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/posts/1')
  Future<PostResponse> getPost();

  @GET('/posts')
  Future<List<PostResponse>> getPosts();
}