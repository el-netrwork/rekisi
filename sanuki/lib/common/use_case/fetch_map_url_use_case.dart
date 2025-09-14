import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';
import 'package:stamp_rally/common/data/dto/map_url_dto.dart';
import 'package:stamp_rally/common/data/model/map_url_model.dart';
import 'package:stamp_rally/common/services/convert_csv_to_json_use_case.dart';
import 'package:stamp_rally/common/services/get_csv_from_asset_use_case.dart';
import 'package:stamp_rally/core/flogger.dart';

part 'fetch_map_url_use_case.g.dart';

@riverpod
Future<MapUrlModel> fetchMapUrlUseCase(Ref ref) async {
  try {
    final csv = await ref.read(getCsvFromAssetUseCaseProvider(
            url: '${Configuration.instance.assetHostUrl}/data/map_url.csv')
        .future);
    if (csv == null) {
      throw Exception('csv is null');
    }
    final json = ref.read(convertCsvToJsonUseCaseProvider(csv: csv));
    if (json == null) {
      throw Exception('json is null');
    }
    return json
        .map((o) => MapUrlModel.fromAsset(data: MapUrlDto.fromJson(o)))
        .toList()[0];
  } catch (e, st) {
    Flogger.e('[GetPlaceUseCase]', error: e, stackTrace: st);
    rethrow;
  }
}
