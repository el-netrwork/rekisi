import 'package:freezed_annotation/freezed_annotation.dart';

part 'worship_card.freezed.dart';

@freezed
class WorshipCard with _$WorshipCard {
  const WorshipCard._();

  const factory WorshipCard(
      {@Default('') String shrineName,
      @Default('') String message,
      int? number,
      int? id,
      @Default('') String address,
      DateTime? getDate}) = _WorshipCard;

// // DtoからModelに変換
// factory WorshipCard.fromAsset({required CompleteCardDto data}) {
//   return WorshipCard(
//     title: data.title,
//     message: data.message,
//     completedDateTime: data.completeDateTime,
//   );
// }
}
