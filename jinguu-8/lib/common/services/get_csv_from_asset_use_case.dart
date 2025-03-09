import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:csv/csv_settings_autodetection.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/common/data/model/csv_model.dart';
import 'package:stamp_rally/core/flogger.dart';

part 'get_csv_from_asset_use_case.g.dart';


@riverpod
Future<CsvModel?> getCsvFromAssetUseCase(GetCsvFromAssetUseCaseRef ref, {required String url}) async {
  try {
    final response = await http.get(Uri.parse(url));
    const d = FirstOccurrenceSettingsDetector(eols: ['\r\n', '\n']);
    final table = const CsvToListConverter(csvSettingsDetector: d).convert(utf8.decode(response.body.runes.toList()));
    return CsvModel(
      columnNames: table.first.map((e) => e.toString()).toList(),
      rows: table.sublist(1),
    );
  } catch (e, st) {
    Flogger.e('[GetCsvAssetUseCase]', error: e, stackTrace: st);
  }
  return null;
}
