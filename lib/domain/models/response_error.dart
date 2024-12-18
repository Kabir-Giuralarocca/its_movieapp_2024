import 'package:json_annotation/json_annotation.dart';

part 'response_error.g.dart';

@JsonSerializable(createToJson: false)
class ResponseError {
  final String code;
  final String description;

  ResponseError({
    required this.code,
    required this.description,
  });

  factory ResponseError.fromJson(Map<String, dynamic> json) => _$ResponseErrorFromJson(json);
}
