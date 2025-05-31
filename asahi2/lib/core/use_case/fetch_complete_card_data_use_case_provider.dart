import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';
import 'package:stamp_rally/common/data/dto/complete_card_data_dto.dart';
import 'package:stamp_rally/common/data/model/complete_card_data_model.dart';
import 'package:stamp_rally/common/services/convert_csv_to_json_use_case.dart';
import 'package:stamp_rally/common/services/get_csv_from_asset_use_case.dart';
import 'package:stamp_rally/core/flogger.dart';

part 'fetch_complete_card_data_use_case_provider.g.dart';

@riverpod
Future<CompleteCardDataModel> fetchCompleteCardDataUseCase(
    FetchCompleteCardDataUseCaseRef ref) async {
  try {
    final csv = await ref.read(getCsvFromAssetUseCaseProvider(
            url:
                '${Configuration.instance.assetHostUrl}/data/complete_card.csv')
        .future);
    if (csv == null) {
      throw Exception('csv is null');
    }
    final json = ref.read(convertCsvToJsonUseCaseProvider(csv: csv));
    if (json == null) {
      throw Exception('json is null');
    }
    final dataList = json
        .map((o) => CompleteCardDataModel.fromAsset(
            data: CompleteCardDataDTO.fromJson(o)))
        .toList();
    return dataList[0];
  } catch (e, st) {
    Flogger.e('[GetPlaceUseCase]', error: e, stackTrace: st);
    rethrow;
  }
}
