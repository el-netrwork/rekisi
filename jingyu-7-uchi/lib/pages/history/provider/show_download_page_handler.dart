import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'show_download_page_handler.g.dart';

@Riverpod(keepAlive: true)
class ShowDownloadPageHandler extends _$ShowDownloadPageHandler {
  @override
  bool build() {
    return true;
  }

  void hide() {
    state = false;
  }

  void show() {
    state = true;
  }
}
