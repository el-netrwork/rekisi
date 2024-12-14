import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_card_dto.freezed.dart';

part 'complete_card_dto.g.dart';

@freezed
class CompleteCardDto with _$CompleteCardDto {
  const CompleteCardDto._();

  const factory CompleteCardDto(
      {required String title,
      required DateTime completeDateTime,
      required String message}) = _CompleteCardDto;

  // 登録用のコンストラクタ
  factory CompleteCardDto.createForRegister(
      {required String title, required String message}) {
    // 登録日を指定する。
    final now = DateTime.now();
    return CompleteCardDto(
        completeDateTime: now, title: title, message: message);
  }

  factory CompleteCardDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteCardDtoFromJson(json);
}
