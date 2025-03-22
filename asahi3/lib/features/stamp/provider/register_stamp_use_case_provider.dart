import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';
import 'package:stamp_rally/common/data/model/place_model.dart';
import 'package:stamp_rally/common/data/dto/stamp_dto.dart';
import 'package:stamp_rally/common/services/location_service.dart';
import 'package:stamp_rally/core/flogger.dart';
import 'package:stamp_rally/features/stamp/provider/fetch_stamped_place_use_case_provider.dart';
import 'package:stamp_rally/features/stamp/repository/stamp_repository.dart';

import '../../../core/log_mabager/dto/log_dto.dart';
import '../../../core/log_mabager/repository/log_manager_repository.dart';

part 'register_stamp_use_case_provider.g.dart';

// 更新状態を管理
sealed class RegisterStampState {
  const RegisterStampState();
}

class Initial extends RegisterStampState {
  const Initial() : super();
}

class Loading extends RegisterStampState {
  const Loading() : super();
}

class OverDistance extends RegisterStampState {
  const OverDistance() : super();
}

class Error extends RegisterStampState {
  const Error(this.message) : super();
  final String message;
}

class Success extends RegisterStampState {
  const Success() : super();
}

@riverpod
class RegisterStampUseCase extends _$RegisterStampUseCase {
  LogManagerRepository get _logManagerRepository =>
      ref.read(logManagerRepositoryProvider);

  StampRepository get _stampRepository => ref.read(stampRepositoryProvider);

  @override
  RegisterStampState build() {
    return const Initial();
  }

  // スタンプを押下
  Future<void> invoke(String id) async {
    try {
      state = const Loading();

      // スタンプリスト取得
      // TODO: 一時的にreadで対応
      final stampList = await ref.read(fetchStampedPlaceUseCaseProvider.future);
      final placeModelList =
          stampList.where((place) => place.historicSpotId == id).toList();
      if (placeModelList.isEmpty) return;

      final placeModel = placeModelList[0];
      final validateState = await validate(placeModel);
      if (validateState != const Loading()) {
        state = validateState;
        return;
      }

      // 登録モデル作成
      final registerStamp = StampDto.createForRegister(
          historicSpotId: placeModel.historicSpotId,
          stampedDateTimeList: placeModel.stampedDateTimeList);

      // 存在確認
      final isStamped =
          await _stampRepository.isStamped(registerStamp.historicSpotId);

      // すでに登録されている場合更新
      if (isStamped) {
        await _stampRepository.update(registerStamp);
      }

      // 新規の場合
      if (!isStamped) {
        await _stampRepository.register(registerStamp);
      }

      state = const Success();
      successLog(placeModel.name);
      // データソースを更新
      ref.invalidate(fetchStampedPlaceUseCaseProvider);
    } on Exception catch (e) {
      Flogger.e(e);
      errorLog();
      state = Error(e.toString());
    }
  }

  // バリデーション
  Future<RegisterStampState> validate(PlaceModel placeModel) async {
    if (placeModel.typeRegisterStamp != TypeRegisterStamp.sample) {
      // 圏内にいるか確認
      final isWithInDistance = await ref
          .watch(locationServiceProvider)
          .isWithinDistance(
              meter: double.parse(placeModel.gpsMeter.toString()),
              lat: placeModel.latitude,
              lon: placeModel.longitude);
      if (!isWithInDistance) {
        return const OverDistance();
      }

      // その他バリデーション
    }
    return const Loading();
  }

  // ログ成功
  Future<void> successLog(String name) async {
    final logData = LogDTO.create(
        level: 'info',
        methodName: 'RegisterStampUseCase.invoke',
        infoBody: 'スタンプ取得: $name');
    _logManagerRepository.saveLog(logData);
  }

  // ログ失敗
  Future<void> errorLog() async {
    final logData = LogDTO.create(
        level: 'error',
        methodName: 'RegisterStampUseCase.invoke',
        infoBody: 'スタンプ取得失敗');
    _logManagerRepository.saveLog(logData);
  }
}
