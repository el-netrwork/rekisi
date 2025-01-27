// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_card_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompleteCardDataDTO _$CompleteCardDataDTOFromJson(Map<String, dynamic> json) {
  return _CompleteCardDataDTO.fromJson(json);
}

/// @nodoc
mixin _$CompleteCardDataDTO {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteCardDataDTOCopyWith<CompleteCardDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteCardDataDTOCopyWith<$Res> {
  factory $CompleteCardDataDTOCopyWith(
          CompleteCardDataDTO value, $Res Function(CompleteCardDataDTO) then) =
      _$CompleteCardDataDTOCopyWithImpl<$Res, CompleteCardDataDTO>;
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class _$CompleteCardDataDTOCopyWithImpl<$Res, $Val extends CompleteCardDataDTO>
    implements $CompleteCardDataDTOCopyWith<$Res> {
  _$CompleteCardDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteCardDataDTOImplCopyWith<$Res>
    implements $CompleteCardDataDTOCopyWith<$Res> {
  factory _$$CompleteCardDataDTOImplCopyWith(_$CompleteCardDataDTOImpl value,
          $Res Function(_$CompleteCardDataDTOImpl) then) =
      __$$CompleteCardDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class __$$CompleteCardDataDTOImplCopyWithImpl<$Res>
    extends _$CompleteCardDataDTOCopyWithImpl<$Res, _$CompleteCardDataDTOImpl>
    implements _$$CompleteCardDataDTOImplCopyWith<$Res> {
  __$$CompleteCardDataDTOImplCopyWithImpl(_$CompleteCardDataDTOImpl _value,
      $Res Function(_$CompleteCardDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$CompleteCardDataDTOImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteCardDataDTOImpl implements _CompleteCardDataDTO {
  const _$CompleteCardDataDTOImpl({required this.title, required this.message});

  factory _$CompleteCardDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteCardDataDTOImplFromJson(json);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'CompleteCardDataDTO(title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteCardDataDTOImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteCardDataDTOImplCopyWith<_$CompleteCardDataDTOImpl> get copyWith =>
      __$$CompleteCardDataDTOImplCopyWithImpl<_$CompleteCardDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteCardDataDTOImplToJson(
      this,
    );
  }
}

abstract class _CompleteCardDataDTO implements CompleteCardDataDTO {
  const factory _CompleteCardDataDTO(
      {required final String title,
      required final String message}) = _$CompleteCardDataDTOImpl;

  factory _CompleteCardDataDTO.fromJson(Map<String, dynamic> json) =
      _$CompleteCardDataDTOImpl.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CompleteCardDataDTOImplCopyWith<_$CompleteCardDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
