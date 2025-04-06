import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/place_model.dart';

part 'place_dto.freezed.dart';

part 'place_dto.g.dart';

@freezed
class PlaceDTO with _$PlaceDTO {
  const factory PlaceDTO({
    required String historicSpotId,
    required String name,
    required String areaName,
    required String yomigana,
    required double longitude,
    required double latitude,
    required TypeRegisterStamp typeRegisterStamp,
    @Default('') String worshipUrl,
    @Default("参拝カード") String img,
    @Default(50) int gpsMeter,
    @Default("") String url,
    @Default("") String proverbs,
    @Default("") String worship_card_top_image_url,
  }) = _PlaceDTO;

  factory PlaceDTO.fromJson(Map<String, dynamic> json) =>
      _$PlaceDTOFromJson(json);
}
