import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stamp_rally/common/data/dto/complete_card_data_dto.dart';

part 'complete_card_data_model.freezed.dart';

// リモートからデータを取得
@freezed
class CompleteCardDataModel with _$CompleteCardDataModel {
  const CompleteCardDataModel._();

  const factory CompleteCardDataModel(
      {required String title,
      required String message}) = _CompleteCardDataModel;

  factory CompleteCardDataModel.fromAsset({required CompleteCardDataDTO data}) {
    return CompleteCardDataModel(
      title: data.title,
      message: data.message,
    );
  }
}
