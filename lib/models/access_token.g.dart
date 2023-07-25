// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => AccessToken(
      json['message'] as String?,
      json['errorCode'] as String?,
      json['errorDetails'] as String?,
      token_changed: json['token_changed'] as bool,
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) =>
    <String, dynamic>{
      'token_changed': instance.token_changed,
      'message': instance.message,
      'errorCode': instance.errorCode,
      'errorDetails': instance.errorDetails,
    };
