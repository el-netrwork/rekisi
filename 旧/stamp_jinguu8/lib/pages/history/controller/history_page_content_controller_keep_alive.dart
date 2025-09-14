import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_page_content_controller_keep_alive.g.dart';

part 'history_page_content_controller_keep_alive.freezed.dart';

@freezed
class HistoryPageContentState with _$HistoryPageContentState {
  const factory HistoryPageContentState(
      {@Default(true) bool isShowDownloadMessage}) = _HistoryPageContentState;
}

@Riverpod(keepAlive: true)
class HistoryPageContentControllerKeepAlive extends _$HistoryPageContentControllerKeepAlive {
  @override
  HistoryPageContentState build() {
    return const HistoryPageContentState();
  }

  void hideMessage(){
    state = state.copyWith(isShowDownloadMessage: false);
  }
}
