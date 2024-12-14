import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/core/common/data/dto/stamp_dto.dart';
import 'package:stamp_rally/core/flogger.dart';
import 'package:stamp_rally/core/shared_preferences_provider.dart';

part 'stamp_repository.g.dart';

@riverpod
StampRepository stampRepository(StampRepositoryRef ref) {
  return StampRepository(ref);
}

class StampRepository {
  final Ref ref;

  const StampRepository(this.ref);

  // スタンプ一覧取得
  Future<List<StampDto>> fetchList() async {
    final pref = await ref.read(sharedPreferencesProvider.future);
    final existingJsonList =
        pref.getStringList(SharedPreferenceKeys.stamp.name) ?? [];
    final existingDataList = existingJsonList
        .map((e) => StampDto.fromJson(json.decode(e)))
        .toList();
    return existingDataList;
  }

  // スタンプ登録
  Future<void> register(StampDto stampData) async {
    try {
      // 存在確認
      if (await isStamped(stampData.historicSpotId)) {
        throw Exception("Data is exist");
      }

      final pref = await ref.read(sharedPreferencesProvider.future);
      final existingDataList = await fetchList();

      existingDataList.add(stampData);
      final jsonList =
      existingDataList.map((e) => json.encode(e.toJson())).toList();

      await pref.setStringList(SharedPreferenceKeys.stamp.name, jsonList);
    } on Exception catch (e, stack) {
      Flogger.w("すでに登録されています。");
      rethrow;
    }
  }

  // スタンプ更新
  Future<void> update(StampDto stampData) async {
    try {
      // 存在確認
      if (!await isStamped(stampData.historicSpotId)) {
        throw Exception("Data is Not exist");
      }
      // リスト取得
      final existingDataList = await fetchList();
      // 対象のデータを削除
      existingDataList
          .removeWhere((e) => e.historicSpotId == stampData.historicSpotId);
      // 新しいデータを追加
      existingDataList.add(stampData);
      final pref = await ref.read(sharedPreferencesProvider.future);

      // json化
      final jsonList =
      existingDataList.map((e) => json.encode(e.toJson())).toList();
      // 登録
      await pref.setStringList(SharedPreferenceKeys.stamp.name, jsonList);
    } on Exception catch (e, sack) {
      return;
    }
  }

  // 存在確認
  Future<bool> isStamped(String historicSpotId) async {
    final existingDataList = await fetchList();
    final isExistData = existingDataList
        .any((element) => element.historicSpotId == historicSpotId);
    return isExistData;
  }


}
