import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/common/data/model/complete_card_model.dart';

import '../repository/complete_card_repository.dart';

part 'fetch_complete_card_use_case.g.dart';

// DBからデータ取得
@riverpod
Future<CompleteCardModel> fetchCompleteCardUseCase(
    FetchCompleteCardUseCaseRef ref) async {
  final data = await ref.watch(completeCardRepositoryProvider).fetch();
  if (data == null) throw Exception("Complete Data is Not Exist");

  return CompleteCardModel(
      completedDateTime: data.completeDateTime, message: data.message, title: data.title);
}
