import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';
import 'package:stamp_rally/common/data/dto/place_dto.dart';
import 'package:stamp_rally/common/data/model/place_model.dart';
import 'package:stamp_rally/common/services/convert_csv_to_json_use_case.dart';
import 'package:stamp_rally/common/services/get_csv_from_asset_use_case.dart';
import 'package:stamp_rally/core/flogger.dart';

part 'get_places_use_case.g.dart';

@riverpod
Future<List<PlaceModel>> getPlacesUseCase(GetPlacesUseCaseRef ref) async {
  try {
    final csv = await ref.read(getCsvFromAssetUseCaseProvider(
            url: '${Configuration.instance.assetHostUrl}/data/asahi1.csv')
        .future);
    if (csv == null) {
      throw Exception('csv is null');
    }
    final json = ref.read(convertCsvToJsonUseCaseProvider(csv: csv));
    if (json == null) {
      throw Exception('json is null');
    }

    // データが存在しない場合は、削除
    json.removeWhere(
        (element) => (element['historicSpotId'] as String).isEmpty);
    return json
        .map((o) => PlaceModel.fromAsset(data: PlaceDTO.fromJson(o)))
        .toList();
  } catch (e, st) {
    Flogger.e('[GetPlaceUseCase]', error: e, stackTrace: st);
  }
  return [];
}
