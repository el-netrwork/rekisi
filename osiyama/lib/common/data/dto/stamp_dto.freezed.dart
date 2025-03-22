// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StampDto _$StampDtoFromJson(Map<String, dynamic> json) {
  return _StampDto.fromJson(json);
}

/// @nodoc
mixin _$StampDto {
  String get historicSpotId => throw _privateConstructorUsedError;
  List<DateTime> get stampedDateTimeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StampDtoCopyWith<StampDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StampDtoCopyWith<$Res> {
  factory $StampDtoCopyWith(StampDto value, $Res Function(StampDto) then) =
      _$StampDtoCopyWithImpl<$Res, StampDto>;
  @useResult
  $Res call({String historicSpotId, List<DateTime> stampedDateTimeList});
}

/// @nodoc
class _$StampDtoCopyWithImpl<$Res, $Val extends StampDto>
    implements $StampDtoCopyWith<$Res> {
  _$StampDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historicSpotId = null,
    Object? stampedDateTimeList = null,
  }) {
    return _then(_value.copyWith(
      historicSpotId: null == historicSpotId
          ? _value.historicSpotId
          : historicSpotId // ignore: cast_nullable_to_non_nullable
              as String,
      stampedDateTimeList: null == stampedDateTimeList
          ? _value.stampedDateTimeList
          : stampedDateTimeList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StampDtoImplCopyWith<$Res>
    implements $StampDtoCopyWith<$Res> {
  factory _$$StampDtoImplCopyWith(
          _$StampDtoImpl value, $Res Function(_$StampDtoImpl) then) =
      __$$StampDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String historicSpotId, List<DateTime> stampedDateTimeList});
}

/// @nodoc
class __$$StampDtoImplCopyWithImpl<$Res>
    extends _$StampDtoCopyWithImpl<$Res, _$StampDtoImpl>
    implements _$$StampDtoImplCopyWith<$Res> {
  __$$StampDtoImplCopyWithImpl(
      _$StampDtoImpl _value, $Res Function(_$StampDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historicSpotId = null,
    Object? stampedDateTimeList = null,
  }) {
    return _then(_$StampDtoImpl(
      historicSpotId: null == historicSpotId
          ? _value.historicSpotId
          : historicSpotId // ignore: cast_nullable_to_non_nullable
              as String,
      stampedDateTimeList: null == stampedDateTimeList
          ? _value._stampedDateTimeList
          : stampedDateTimeList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StampDtoImpl extends _StampDto {
  const _$StampDtoImpl(
      {required this.historicSpotId,
      final List<DateTime> stampedDateTimeList = const []})
      : _stampedDateTimeList = stampedDateTimeList,
        super._();

  factory _$StampDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StampDtoImplFromJson(json);

  @override
  final String historicSpotId;
  final List<DateTime> _stampedDateTimeList;
  @override
  @JsonKey()
  List<DateTime> get stampedDateTimeList {
    if (_stampedDateTimeList is EqualUnmodifiableListView)
      return _stampedDateTimeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stampedDateTimeList);
  }

  @override
  String toString() {
    return 'StampDto(historicSpotId: $historicSpotId, stampedDateTimeList: $stampedDateTimeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StampDtoImpl &&
            (identical(other.historicSpotId, historicSpotId) ||
                other.historicSpotId == historicSpotId) &&
            const DeepCollectionEquality()
                .equals(other._stampedDateTimeList, _stampedDateTimeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, historicSpotId,
      const DeepCollectionEquality().hash(_stampedDateTimeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StampDtoImplCopyWith<_$StampDtoImpl> get copyWith =>
      __$$StampDtoImplCopyWithImpl<_$StampDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StampDtoImplToJson(
      this,
    );
  }
}

abstract class _StampDto extends StampDto {
  const factory _StampDto(
      {required final String historicSpotId,
      final List<DateTime> stampedDateTimeList}) = _$StampDtoImpl;
  const _StampDto._() : super._();

  factory _StampDto.fromJson(Map<String, dynamic> json) =
      _$StampDtoImpl.fromJson;

  @override
  String get historicSpotId;
  @override
  List<DateTime> get stampedDateTimeList;
  @override
  @JsonKey(ignore: true)
  _$$StampDtoImplCopyWith<_$StampDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
