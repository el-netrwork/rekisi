import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_page_child.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int pageIndex,
    @Default(false) bool isLocationAllow,
  }) = _HomeState;
}

extension HomeStateExtension on HomeState {
  HomePageChild get child => HomePageChild.values[pageIndex];
}

@Riverpod(keepAlive: true)
class HomeStateNotifier extends _$HomeStateNotifier {
  @override
  HomeState build() => const HomeState();

  void setPageIndex(int value) {
    state = state.copyWith(pageIndex: value);
  }

  void setPage(HomePageChild value) {
    state = state.copyWith(pageIndex: HomePageChild.values.indexOf(value));
  }

  void setIsLocationAllow(bool value) {
    state = state.copyWith(isLocationAllow: value);
  }
}
