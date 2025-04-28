import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/core/flogger.dart';
import '../data/model/csv_model.dart';

part 'convert_csv_to_json_use_case.g.dart';

@riverpod
List<Map<String, dynamic>>? convertCsvToJsonUseCase(ConvertCsvToJsonUseCaseRef ref, {required CsvModel csv}) {
  try {
    final str = jsonEncode(csv.rows.map((rows) => Map.fromIterables(csv.columnNames, rows)).toList());
    return List<Map<String, dynamic>>.from(jsonDecode(str).map((e) => Map<String, dynamic>.from(e)));
  } catch (e, st) {
    Flogger.e('[ConvertCsvToJsonUseCase]', error: e, stackTrace: st);
  }
  return null;
}
