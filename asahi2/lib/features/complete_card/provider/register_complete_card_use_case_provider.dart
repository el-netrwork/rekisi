import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/common/data/dto/complete_card_dto.dart';
import 'package:stamp_rally/core/log_mabager/dto/log_dto.dart';
import 'package:stamp_rally/core/log_mabager/repository/log_manager_repository.dart';
import 'package:stamp_rally/core/use_case/fetch_complete_card_data_use_case_provider.dart';
import 'package:stamp_rally/features/complete_card/repository/complete_card_repository.dart';

part 'register_complete_card_use_case_provider.g.dart';

sealed class RegisterCompleteCardState {
  const RegisterCompleteCardState();
}

class Initial extends RegisterCompleteCardState {
  const Initial() : super();
}

class Loading extends RegisterCompleteCardState {
  const Loading() : super();
}

class Success extends RegisterCompleteCardState {
  const Success() : super();
}

class Error extends RegisterCompleteCardState {
  const Error(this.message) : super();
  final String message;
}

@riverpod
class RegisterCompleteCardUseCase extends _$RegisterCompleteCardUseCase {
  CompleteCardRepository get _completeCardRepository =>
      ref.read(completeCardRepositoryProvider);

  LogManagerRepository get _logManagerRepository =>
      ref.read(logManagerRepositoryProvider);

  @override
  RegisterCompleteCardState build() {
    return const Initial();
  }

  Future<void> invoke() async {
    try {
      state = const Loading();

      // データが存在する場合は終了
      if (await _completeCardRepository.isExist()) {
        await successLog();
        state = const Success();
        return;
      }

      final completeCardData =
          await ref.watch(fetchCompleteCardDataUseCaseProvider.future);

      final dataDto = CompleteCardDto.createForRegister(
          title: completeCardData.title, message: completeCardData.message);
      await _completeCardRepository.register(dataDto);
      state = const Success();
      // ログ生成
      await successLog();
    } catch (e) {
      state = Error(e.toString());

      // ログ生成
      await errorLog();
      rethrow;
    }
  }

  // ログ成功
  Future<void> successLog() async {
    final logData = LogDTO.create(
        level: 'info',
        methodName: 'RegisterCompleteCardUseCase.invoke',
        infoBody: '達成カード取得');
    _logManagerRepository.saveLog(logData);
  }

  // ログ失敗
  Future<void> errorLog() async {
    final logData = LogDTO.create(
        level: 'error',
        methodName: 'RegisterCompleteCardUseCase.invoke',
        infoBody: '達成カード取得失敗');
    _logManagerRepository.saveLog(logData);
  }
}
