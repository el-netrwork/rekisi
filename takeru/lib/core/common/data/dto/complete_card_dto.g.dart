// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteCardDtoImpl _$$CompleteCardDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteCardDtoImpl(
      title: json['title'] as String,
      completeDateTime: DateTime.parse(json['completeDateTime'] as String),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CompleteCardDtoImplToJson(
        _$CompleteCardDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'completeDateTime': instance.completeDateTime.toIso8601String(),
      'message': instance.message,
    };
