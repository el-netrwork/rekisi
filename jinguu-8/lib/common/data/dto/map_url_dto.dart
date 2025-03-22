import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stamp_rally/common/data/dto/place_dto.dart';

part 'map_url_dto.freezed.dart';
part 'map_url_dto.g.dart';


@freezed
class MapUrlDto with _$MapUrlDto {
  const MapUrlDto._();

  const factory MapUrlDto({
    required String appId,
    required String url
  }) = _MapUrlDto;

  factory MapUrlDto.fromJson(Map<String, dynamic> json) =>
      _$MapUrlDtoFromJson(json);



  // CSVデータから型変換
  // factory MapUrlModel.fromAsset({required PlaceDTO data}) {
  //   return MapUrlModel(
  //       historicSpotId: data.historicSpotId,
  //       name: data.name,
  //       areaName: data.areaName,
  //       yomigana: data.yomigana,
  //       longitude: data.longitude,
  //       latitude: data.latitude,
  //       typeRegisterStamp: data.typeRegisterStamp,
  //       url: data.url,
  //       gpsMeter: data.gpsMeter);
  // }
}
