import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stamp_rally/common/data/dto/map_url_dto.dart';
import 'package:stamp_rally/common/data/dto/place_dto.dart';

part 'map_url_model.freezed.dart';


@freezed
class MapUrlModel with _$MapUrlModel {
  const MapUrlModel._();

  const factory MapUrlModel({
    required String appId,
    required String url
  }) = _MapUrlModel;



  // CSVデータから型変換
  factory MapUrlModel.fromAsset({required MapUrlDto data}) {
    return MapUrlModel(
      appId: data.appId,
      url: data.url
    );
  }
}
