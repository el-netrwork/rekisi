
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'show_top_message_provider.g.dart';

@Riverpod(keepAlive: true)
class ShowTopMessageProvider extends _$ShowTopMessageProvider {
  @override
  bool build() {
    return true;
  }

  void hideMessage(){
    state = false;
  }

  void openMessage(){
    state = true;
  }
}