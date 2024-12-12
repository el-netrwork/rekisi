import 'package:freezed_annotation/freezed_annotation.dart';

part 'stamp_dto.freezed.dart';

part 'stamp_dto.g.dart';

@freezed
class StampDto with _$StampDto {
  const StampDto._();

  const factory StampDto(
      {required String historicSpotId,
      @Default([]) List<DateTime> stampedDateTimeList}) = _StampDto;

  // 登録用のコンストラクタ
  factory StampDto.createForRegister(
      {required String historicSpotId,
      @Default([]) required List<DateTime> stampedDateTimeList}) {
    // 今日の日付を追加
    final listData = List<DateTime>.from(stampedDateTimeList).toList();
    listData.add(DateTime.now());

    // 降順でソート
    listData.sort(((a, b) => b.compareTo(a)));

    //3つまで取得し登録する。
    final registerDateList = listData.take(3).toList();

    return StampDto(
        historicSpotId: historicSpotId, stampedDateTimeList: registerDateList);
  }

  factory StampDto.fromJson(Map<String, dynamic> json) =>
      _$StampDtoFromJson(json);
}
