import 'package:json_annotation/json_annotation.dart';

part 'sign_up.g.dart';

@JsonSerializable(createFactory: false)
class SignUp {
  final String userName;
  final String email;
  final String password;

  SignUp({
    required this.userName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignUpToJson(this);
}
