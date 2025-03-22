import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/core/supabase_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../dto/log_dto.dart';

part 'log_manager_repository.g.dart';

@Riverpod(keepAlive: true)
LogManagerRepository logManagerRepository(LogManagerRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return LogManagerRepository(client);
}

class LogManagerRepository {
  final SupabaseClient _client;

  const LogManagerRepository(this._client);

  Future<void> saveLog(LogDTO data) async {
    try {
      await _client.from('logs').insert(data.toJson());
    } on Exception catch (e) {
      // ログの送信に失敗した場合は例外は吐かない。
      print(e);
    }
  }
}
