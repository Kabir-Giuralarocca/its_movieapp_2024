import 'package:dio/dio.dart';
import 'package:its_movieapp_2024/config/environment.dart';

class AuthClient {
  BaseOptions get options {
    return BaseOptions(
      baseUrl: '${Env.baseUrl}/api/auth',
      contentType: Headers.jsonContentType,
    );
  }

  Dio get client {
    final Dio dio = Dio(options)
      ..interceptors.addAll([
        LogInterceptor(requestBody: true),
      ]);
    return dio;
  }
}
