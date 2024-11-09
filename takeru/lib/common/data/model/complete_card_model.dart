import 'package:freezed_annotation/freezed_annotation.dart';

import '../dto/complete_card_dto.dart';

part 'complete_card_model.freezed.dart';

@freezed
class CompleteCardModel with _$CompleteCardModel {

  const CompleteCardModel._();
  const factory CompleteCardModel(
      {required String title,
      required DateTime completedDateTime,
      required String message}) = _CompleteCardModel;

  // DtoからModelに変換
  factory CompleteCardModel.fromAsset({required CompleteCardDto data}) {
    return CompleteCardModel(
      title: data.title,
      message: data.message,
      completedDateTime: data.completeDateTime,
    );
  }
}
