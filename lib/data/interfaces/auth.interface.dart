import 'package:its_movieapp_2024/domain/models/sign_in.dart';
import 'package:its_movieapp_2024/domain/models/sign_up.dart';
import 'package:its_movieapp_2024/domain/models/user.dart';

abstract class AuthInterface {
  Future<User> signIn(SignIn signIn);
  Future<void> signUp(SignUp signUp);
}
