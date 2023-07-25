import 'package:json_annotation/json_annotation.dart';

part 'access_token.g.dart';

@JsonSerializable()
class AccessToken {
  AccessToken(
    this.message,
    this.errorCode,
    this.errorDetails, {
    required this.token_changed,
  });

  @JsonKey(name: 'token_changed')
  final bool token_changed;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'errorCode')
  final String? errorCode;
  @JsonKey(name: 'errorDetails')
  final String? errorDetails;

  bool hasError() {
    return errorCode?.isNotEmpty == true;
  }

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);
}
