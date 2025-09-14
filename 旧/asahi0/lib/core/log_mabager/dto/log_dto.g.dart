// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogDTOImpl _$$LogDTOImplFromJson(Map<String, dynamic> json) => _$LogDTOImpl(
      appName: json['app_name'] as String,
      level: json['level'] as String,
      info: json['info'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LogDTOImplToJson(_$LogDTOImpl instance) =>
    <String, dynamic>{
      'app_name': instance.appName,
      'level': instance.level,
      'info': instance.info,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
