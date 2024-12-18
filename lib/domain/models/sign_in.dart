import 'package:json_annotation/json_annotation.dart';

part 'sign_in.g.dart';

@JsonSerializable(createFactory: false)
class SignIn {
  final String userName;
  final String password;

  SignIn({
    required this.userName,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignInToJson(this);
}
