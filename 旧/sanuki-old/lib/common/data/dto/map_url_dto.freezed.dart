// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapUrlDto _$MapUrlDtoFromJson(Map<String, dynamic> json) {
  return _MapUrlDto.fromJson(json);
}

/// @nodoc
mixin _$MapUrlDto {
  String get appId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapUrlDtoCopyWith<MapUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapUrlDtoCopyWith<$Res> {
  factory $MapUrlDtoCopyWith(MapUrlDto value, $Res Function(MapUrlDto) then) =
      _$MapUrlDtoCopyWithImpl<$Res, MapUrlDto>;
  @useResult
  $Res call({String appId, String url});
}

/// @nodoc
class _$MapUrlDtoCopyWithImpl<$Res, $Val extends MapUrlDto>
    implements $MapUrlDtoCopyWith<$Res> {
  _$MapUrlDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapUrlDtoImplCopyWith<$Res>
    implements $MapUrlDtoCopyWith<$Res> {
  factory _$$MapUrlDtoImplCopyWith(
          _$MapUrlDtoImpl value, $Res Function(_$MapUrlDtoImpl) then) =
      __$$MapUrlDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appId, String url});
}

/// @nodoc
class __$$MapUrlDtoImplCopyWithImpl<$Res>
    extends _$MapUrlDtoCopyWithImpl<$Res, _$MapUrlDtoImpl>
    implements _$$MapUrlDtoImplCopyWith<$Res> {
  __$$MapUrlDtoImplCopyWithImpl(
      _$MapUrlDtoImpl _value, $Res Function(_$MapUrlDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? url = null,
  }) {
    return _then(_$MapUrlDtoImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapUrlDtoImpl extends _MapUrlDto {
  const _$MapUrlDtoImpl({required this.appId, required this.url}) : super._();

  factory _$MapUrlDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapUrlDtoImplFromJson(json);

  @override
  final String appId;
  @override
  final String url;

  @override
  String toString() {
    return 'MapUrlDto(appId: $appId, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapUrlDtoImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appId, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapUrlDtoImplCopyWith<_$MapUrlDtoImpl> get copyWith =>
      __$$MapUrlDtoImplCopyWithImpl<_$MapUrlDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapUrlDtoImplToJson(
      this,
    );
  }
}

abstract class _MapUrlDto extends MapUrlDto {
  const factory _MapUrlDto(
      {required final String appId,
      required final String url}) = _$MapUrlDtoImpl;
  const _MapUrlDto._() : super._();

  factory _MapUrlDto.fromJson(Map<String, dynamic> json) =
      _$MapUrlDtoImpl.fromJson;

  @override
  String get appId;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$MapUrlDtoImplCopyWith<_$MapUrlDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
