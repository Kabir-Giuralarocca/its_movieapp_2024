import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:its_movieapp_2024/data/clients/auth.client.dart';
import 'package:its_movieapp_2024/data/interfaces/auth.interface.dart';
import 'package:its_movieapp_2024/domain/models/sign_in.dart';
import 'package:its_movieapp_2024/domain/models/sign_up.dart';
import 'package:its_movieapp_2024/domain/models/user.dart';

class AuthRepository extends AuthClient implements AuthInterface {
  @override
  Future<User> signIn(SignIn signIn) async {
    try {
      final response = await client.post(
        '/signin',
        data: jsonEncode(signIn.toJson()),
      );
      final result = User.fromJson(response.data);
      return result;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<void> signUp(SignUp signUp) async {
    try {
      await client.post(
        '/signup',
        data: jsonEncode(signUp.toJson()),
      );
    } on DioException {
      rethrow;
    }
  }
}
