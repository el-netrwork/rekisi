import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/data/model/place_model.dart';
import '../../../common/services/location_service.dart';

part 'stamp_validater_provider.g.dart';

@riverpod
StampValidator stampValidatorProvider(Ref ref) {
  return StampValidator(ref);
}

class StampValidator {
  final Ref ref;

  const StampValidator(this.ref);

  // スタンプ取得バリデータ
  Future<String?> getWorshipCardValidator(PlaceModel place) async {
    final currentTime = DateTime.now();
    final locationService = ref.watch(locationServiceProvider);

    final isNotWithinDate = currentTime.isBefore(place.dateStart!) ||
        currentTime.isAfter(place.dateEnd!);
    if (isNotWithinDate) return "期間内ではありません。";

    final isWithin = await locationService.isWithinDistance(
      meter: place.gpsMeter.toDouble(),
      lat: place.latitude,
      lon: place.longitude,
    );
    if (!isWithin) return "距離が離れすぎています。";

    return null; // Validation passed
  }
}
