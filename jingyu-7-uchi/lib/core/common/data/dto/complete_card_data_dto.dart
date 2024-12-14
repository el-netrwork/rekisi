import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/place_model.dart';

part 'complete_card_data_dto.freezed.dart';

part 'complete_card_data_dto.g.dart';

@freezed
class CompleteCardDataDTO with _$CompleteCardDataDTO {
  const factory CompleteCardDataDTO(
      {required String title,
      required String message}) = _CompleteCardDataDTO;

  factory CompleteCardDataDTO.fromJson(Map<String, dynamic> json) =>
      _$CompleteCardDataDTOFromJson(json);
}
