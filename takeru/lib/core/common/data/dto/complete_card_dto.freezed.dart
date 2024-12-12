// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompleteCardDto _$CompleteCardDtoFromJson(Map<String, dynamic> json) {
  return _CompleteCardDto.fromJson(json);
}

/// @nodoc
mixin _$CompleteCardDto {
  String get title => throw _privateConstructorUsedError;
  DateTime get completeDateTime => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteCardDtoCopyWith<CompleteCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteCardDtoCopyWith<$Res> {
  factory $CompleteCardDtoCopyWith(
          CompleteCardDto value, $Res Function(CompleteCardDto) then) =
      _$CompleteCardDtoCopyWithImpl<$Res, CompleteCardDto>;
  @useResult
  $Res call({String title, DateTime completeDateTime, String message});
}

/// @nodoc
class _$CompleteCardDtoCopyWithImpl<$Res, $Val extends CompleteCardDto>
    implements $CompleteCardDtoCopyWith<$Res> {
  _$CompleteCardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? completeDateTime = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completeDateTime: null == completeDateTime
          ? _value.completeDateTime
          : completeDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteCardDtoImplCopyWith<$Res>
    implements $CompleteCardDtoCopyWith<$Res> {
  factory _$$CompleteCardDtoImplCopyWith(_$CompleteCardDtoImpl value,
          $Res Function(_$CompleteCardDtoImpl) then) =
      __$$CompleteCardDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime completeDateTime, String message});
}

/// @nodoc
class __$$CompleteCardDtoImplCopyWithImpl<$Res>
    extends _$CompleteCardDtoCopyWithImpl<$Res, _$CompleteCardDtoImpl>
    implements _$$CompleteCardDtoImplCopyWith<$Res> {
  __$$CompleteCardDtoImplCopyWithImpl(
      _$CompleteCardDtoImpl _value, $Res Function(_$CompleteCardDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? completeDateTime = null,
    Object? message = null,
  }) {
    return _then(_$CompleteCardDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completeDateTime: null == completeDateTime
          ? _value.completeDateTime
          : completeDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteCardDtoImpl extends _CompleteCardDto {
  const _$CompleteCardDtoImpl(
      {required this.title,
      required this.completeDateTime,
      required this.message})
      : super._();

  factory _$CompleteCardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteCardDtoImplFromJson(json);

  @override
  final String title;
  @override
  final DateTime completeDateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'CompleteCardDto(title: $title, completeDateTime: $completeDateTime, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteCardDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completeDateTime, completeDateTime) ||
                other.completeDateTime == completeDateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, completeDateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteCardDtoImplCopyWith<_$CompleteCardDtoImpl> get copyWith =>
      __$$CompleteCardDtoImplCopyWithImpl<_$CompleteCardDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteCardDtoImplToJson(
      this,
    );
  }
}

abstract class _CompleteCardDto extends CompleteCardDto {
  const factory _CompleteCardDto(
      {required final String title,
      required final DateTime completeDateTime,
      required final String message}) = _$CompleteCardDtoImpl;
  const _CompleteCardDto._() : super._();

  factory _CompleteCardDto.fromJson(Map<String, dynamic> json) =
      _$CompleteCardDtoImpl.fromJson;

  @override
  String get title;
  @override
  DateTime get completeDateTime;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CompleteCardDtoImplCopyWith<_$CompleteCardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
