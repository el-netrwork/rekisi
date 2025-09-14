// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StampDtoImpl _$$StampDtoImplFromJson(Map<String, dynamic> json) =>
    _$StampDtoImpl(
      historicSpotId: json['historicSpotId'] as String,
      stampedDateTimeList: (json['stampedDateTimeList'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StampDtoImplToJson(_$StampDtoImpl instance) =>
    <String, dynamic>{
      'historicSpotId': instance.historicSpotId,
      'stampedDateTimeList':
          instance.stampedDateTimeList.map((e) => e.toIso8601String()).toList(),
    };
