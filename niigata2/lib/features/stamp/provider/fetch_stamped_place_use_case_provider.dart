import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/common/data/model/place_model.dart';
import 'package:stamp_rally/common/use_case/get_places_use_case.dart';
import 'package:stamp_rally/features/stamp/repository/stamp_repository.dart';

part 'fetch_stamped_place_use_case_provider.g.dart';

@riverpod
Future<List<PlaceModel>> fetchStampedPlaceUseCase(
    FetchStampedPlaceUseCaseRef ref) async {

  // スタンプ押下された場所一覧
  final stampedList = (await ref.watch(stampRepositoryProvider).fetchList());

  // 場所一覧
  final placeList = await ref.watch(getPlacesUseCaseProvider.future);

  // 場所に、スタンプ押下情報をマージ
  final newPlaceModel = placeList.map((e) {
    final isStamped = stampedList
        .any((stamped) => stamped.historicSpotId == e.historicSpotId);
    if (isStamped) {
      final data =
          stampedList.firstWhere((s) => s.historicSpotId == e.historicSpotId);

      e = e.copyWith(
        stampedDateTimeList: data.stampedDateTimeList, isStamped: true);
    }
    return e;
  }).toList();

  return newPlaceModel;
}
