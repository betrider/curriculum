final api = () {
  // Dio 인스턴스 생성
  final dio = Dio();

  // 토큰 interceptor 추가
  dio.interceptors.add(
    QueuedInterceptorsWrapper(
      // 요청 interceptor
      onRequest: (options, handler) {
        // 요청 헤더에 액세스 토큰 추가
        options.headers['Authorization'] = 'Bearer your_access_token';
        return handler.next(options);
      },
      // 성공적인 응답 interceptor
      onResponse: (response, handler) {
        return handler.next(response);
      },
      // 실패한 응답 interceptor
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401) {
          // 401 응답을 받았을 때 액세스 토큰을 갱신
          // String newAccessToken = await refreshToken();

          // 새 액세스 토큰으로 요청 헤더 업데이트
          // e.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

          // 업데이트된 헤더로 요청 반복
          return handler.resolve(await dio.fetch(e.requestOptions));
        }
        return handler.next(e);
      },
    ),
  );

  // 로그 interceptor 추가
  dio.interceptors.add(PrettyDioLogger());

  // RestClient 인스턴스 생성
  final client = RestClient(dio);

  return client;
}();
