import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_holiday_jp_service.g.dart';

@riverpod
GetHolidayJpService getHolidayJpService(Ref ref){
  return GetHolidayJpService();
}

class GetHolidayJpService {
  Future<List<DateTime>> getHolidays() async {
    const String url = 'https://holidays-jp.github.io/api/v1/date.json';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data.keys.map((key) => DateTime.parse(key)).toList();
    } else {
      throw Exception('Failed to load holidays');
    }
  }
}
