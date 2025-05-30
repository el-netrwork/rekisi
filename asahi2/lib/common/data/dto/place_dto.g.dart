// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDTOImpl _$$PlaceDTOImplFromJson(Map<String, dynamic> json) =>
    _$PlaceDTOImpl(
      historicSpotId: json['historicSpotId'] as String,
      name: json['name'] as String,
      areaName: json['areaName'] as String,
      yomigana: json['yomigana'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      typeRegisterStamp:
          $enumDecode(_$TypeRegisterStampEnumMap, json['typeRegisterStamp']),
      worshipUrl: json['worshipUrl'] as String? ?? '',
      img: json['img'] as String? ?? "参拝カード",
      gpsMeter: json['gpsMeter'] as int? ?? 50,
      url: json['url'] as String? ?? "",
      proverbs: json['proverbs'] as String? ?? "",
      worship_card_top_image_url:
          json['worship_card_top_image_url'] as String? ?? "",
      dateStart: json['dateStart'] as String? ?? "",
      dateEnd: json['dateEnd'] as String? ?? "",
      timeStartWeekDays: json['timeStartWeekDays'] as String?,
      timeEndWeekDays: json['timeEndWeekDays'] as String?,
      timeStartHoliday: json['timeStartHoliday'] as String?,
      timeEndHoliday: json['timeEndHoliday'] as String?,
    );

Map<String, dynamic> _$$PlaceDTOImplToJson(_$PlaceDTOImpl instance) =>
    <String, dynamic>{
      'historicSpotId': instance.historicSpotId,
      'name': instance.name,
      'areaName': instance.areaName,
      'yomigana': instance.yomigana,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'typeRegisterStamp':
          _$TypeRegisterStampEnumMap[instance.typeRegisterStamp]!,
      'worshipUrl': instance.worshipUrl,
      'img': instance.img,
      'gpsMeter': instance.gpsMeter,
      'url': instance.url,
      'proverbs': instance.proverbs,
      'worship_card_top_image_url': instance.worship_card_top_image_url,
      'dateStart': instance.dateStart,
      'dateEnd': instance.dateEnd,
      'timeStartWeekDays': instance.timeStartWeekDays,
      'timeEndWeekDays': instance.timeEndWeekDays,
      'timeStartHoliday': instance.timeStartHoliday,
      'timeEndHoliday': instance.timeEndHoliday,
    };

const _$TypeRegisterStampEnumMap = {
  TypeRegisterStamp.gps: 'gps',
  TypeRegisterStamp.qr: 'qr',
  TypeRegisterStamp.sample: 'sample',
  TypeRegisterStamp.gpsDate: 'gpsDate',
};
