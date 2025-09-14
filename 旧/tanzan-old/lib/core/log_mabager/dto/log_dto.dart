import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_dto.freezed.dart';

part 'log_dto.g.dart';

@freezed
class LogDTO with _$LogDTO {
  const factory LogDTO(
      {@JsonKey(name: 'app_name') required String appName,
      @JsonKey(name: 'level') required String level,
      @JsonKey(name: 'info') required String info,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt}) = _LogDTO;

  const LogDTO._();

  // LogDTO生成用
  factory LogDTO.create({
    required String level,
    required String methodName,
    required String infoBody,
  }) {
    const appName = String.fromEnvironment('appNameAndroid');
    final info = '$methodName: $infoBody';
    return LogDTO(
        appName: appName,
        level: level,
        info: info,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
  }

  factory LogDTO.fromJson(Map<String, dynamic> json) => _$LogDTOFromJson(json);
}
