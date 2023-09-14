// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/api/rest_api.dart';
import 'package:flutter_widget/model/address.dart';
import 'package:flutter_widget/model/comment_response.dart';
import 'package:flutter_widget/model/data_response.dart';
import 'package:flutter_widget/model/model.dart';
import 'package:flutter_widget/model/user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() {
  // 앱 실행
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrofit Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Retrofit Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var client = getRestClient();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                Address address = Address("My st.", "New York");
                User user = User("John", address);
                print(user.toJson());
              },
              child: Text('sample'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.getPosts1();
                print(result);
              },
              child: Text('GET /posts'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.getPosts2('1');
                print(result.toJson());
              },
              child: Text('GET /posts/1'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.getComments1('1');
                print(result);
              },
              child: Text('GET /posts/1/comments'),
            ),
            ElevatedButton(
              onPressed: () async {
                var request = CommentRequest(postId: 1);
                var result = await client.getComments2(request);
                var result2 = DataResponse<List<CommentResponse>>(
                  success: true,
                  message: '성공',
                  data: result,
                );
                print(result2.toJson((p0) => p0));
              },
              child: Text('GET /posts/1/comments'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.postPosts();
                print(result);
              },
              child: Text('POST /posts'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.putPosts('1');
                print(result);
              },
              child: Text('PUT /posts/1'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.patchPosts('1');
                print(result);
              },
              child: Text('PATCH /posts/1'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await client.deletePosts('1');
                print(result);
              },
              child: Text('DELETE /posts/1'),
            ),
          ],
        ),
      ),
      // body: FutureBuilder<List<PostResponse>>(
      //   future: getRestClient().getPosts1(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData == false || snapshot.data == null) {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     return ListView.builder(
      //       itemCount: snapshot.data!.length,
      //       itemBuilder: (context, index) {
      //         var item = snapshot.data![index];
      //         return Card(
      //           child: ListTile(
      //             leading: FlutterLogo(size: 72.0),
      //             title: Text(
      //               item.title,
      //               style: TextStyle(
      //                 fontSize: 16,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             subtitle: Text(item.body),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}

RestClient getRestClient() {
  // dio 생성
  final dio = Dio();

  // token interceptor 추가
  dio.interceptors.add(
    QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        // Add the access token to the request header
        options.headers['Authorization'] = 'Bearer your_access_token';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401) {
          // If a 401 response is received, refresh the access token
          String newAccessToken = await refreshToken();

          // Update the request header with the new access token
          e.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

          // Repeat the request with the updated header
          return handler.resolve(await dio.fetch(e.requestOptions));
        }
        return handler.next(e);
      },
    ),
  );

  // log interceptor 추가1
  dio.interceptors.add(PrettyDioLogger());

  // log interceptor 추가2
  // dio.interceptors.add(CustomLogInterceptor());

  final client = RestClient(dio);

  return client;
}

Future<String> refreshToken() async {
  // Perform a request to the refresh token endpoint and return the new access token.
  // You can replace this with your own implementation.
  return 'your_new_access_token';
}
