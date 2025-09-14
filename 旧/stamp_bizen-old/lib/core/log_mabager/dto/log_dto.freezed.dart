// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogDTO _$LogDTOFromJson(Map<String, dynamic> json) {
  return _LogDTO.fromJson(json);
}

/// @nodoc
mixin _$LogDTO {
  @JsonKey(name: 'app_name')
  String get appName => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'info')
  String get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogDTOCopyWith<LogDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogDTOCopyWith<$Res> {
  factory $LogDTOCopyWith(LogDTO value, $Res Function(LogDTO) then) =
      _$LogDTOCopyWithImpl<$Res, LogDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'app_name') String appName,
      @JsonKey(name: 'level') String level,
      @JsonKey(name: 'info') String info,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$LogDTOCopyWithImpl<$Res, $Val extends LogDTO>
    implements $LogDTOCopyWith<$Res> {
  _$LogDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? level = null,
    Object? info = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogDTOImplCopyWith<$Res> implements $LogDTOCopyWith<$Res> {
  factory _$$LogDTOImplCopyWith(
          _$LogDTOImpl value, $Res Function(_$LogDTOImpl) then) =
      __$$LogDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'app_name') String appName,
      @JsonKey(name: 'level') String level,
      @JsonKey(name: 'info') String info,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$LogDTOImplCopyWithImpl<$Res>
    extends _$LogDTOCopyWithImpl<$Res, _$LogDTOImpl>
    implements _$$LogDTOImplCopyWith<$Res> {
  __$$LogDTOImplCopyWithImpl(
      _$LogDTOImpl _value, $Res Function(_$LogDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? level = null,
    Object? info = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LogDTOImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogDTOImpl extends _LogDTO {
  const _$LogDTOImpl(
      {@JsonKey(name: 'app_name') required this.appName,
      @JsonKey(name: 'level') required this.level,
      @JsonKey(name: 'info') required this.info,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$LogDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogDTOImplFromJson(json);

  @override
  @JsonKey(name: 'app_name')
  final String appName;
  @override
  @JsonKey(name: 'level')
  final String level;
  @override
  @JsonKey(name: 'info')
  final String info;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LogDTO(appName: $appName, level: $level, info: $info, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogDTOImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appName, level, info, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogDTOImplCopyWith<_$LogDTOImpl> get copyWith =>
      __$$LogDTOImplCopyWithImpl<_$LogDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogDTOImplToJson(
      this,
    );
  }
}

abstract class _LogDTO extends LogDTO {
  const factory _LogDTO(
          {@JsonKey(name: 'app_name') required final String appName,
          @JsonKey(name: 'level') required final String level,
          @JsonKey(name: 'info') required final String info,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$LogDTOImpl;
  const _LogDTO._() : super._();

  factory _LogDTO.fromJson(Map<String, dynamic> json) = _$LogDTOImpl.fromJson;

  @override
  @JsonKey(name: 'app_name')
  String get appName;
  @override
  @JsonKey(name: 'level')
  String get level;
  @override
  @JsonKey(name: 'info')
  String get info;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LogDTOImplCopyWith<_$LogDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
