// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompleteCardModel {
  String get title => throw _privateConstructorUsedError;
  DateTime get completedDateTime => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteCardModelCopyWith<CompleteCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteCardModelCopyWith<$Res> {
  factory $CompleteCardModelCopyWith(
          CompleteCardModel value, $Res Function(CompleteCardModel) then) =
      _$CompleteCardModelCopyWithImpl<$Res, CompleteCardModel>;
  @useResult
  $Res call({String title, DateTime completedDateTime, String message});
}

/// @nodoc
class _$CompleteCardModelCopyWithImpl<$Res, $Val extends CompleteCardModel>
    implements $CompleteCardModelCopyWith<$Res> {
  _$CompleteCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? completedDateTime = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completedDateTime: null == completedDateTime
          ? _value.completedDateTime
          : completedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteCardModelImplCopyWith<$Res>
    implements $CompleteCardModelCopyWith<$Res> {
  factory _$$CompleteCardModelImplCopyWith(_$CompleteCardModelImpl value,
          $Res Function(_$CompleteCardModelImpl) then) =
      __$$CompleteCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime completedDateTime, String message});
}

/// @nodoc
class __$$CompleteCardModelImplCopyWithImpl<$Res>
    extends _$CompleteCardModelCopyWithImpl<$Res, _$CompleteCardModelImpl>
    implements _$$CompleteCardModelImplCopyWith<$Res> {
  __$$CompleteCardModelImplCopyWithImpl(_$CompleteCardModelImpl _value,
      $Res Function(_$CompleteCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? completedDateTime = null,
    Object? message = null,
  }) {
    return _then(_$CompleteCardModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completedDateTime: null == completedDateTime
          ? _value.completedDateTime
          : completedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompleteCardModelImpl extends _CompleteCardModel {
  const _$CompleteCardModelImpl(
      {required this.title,
      required this.completedDateTime,
      required this.message})
      : super._();

  @override
  final String title;
  @override
  final DateTime completedDateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'CompleteCardModel(title: $title, completedDateTime: $completedDateTime, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteCardModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completedDateTime, completedDateTime) ||
                other.completedDateTime == completedDateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, completedDateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteCardModelImplCopyWith<_$CompleteCardModelImpl> get copyWith =>
      __$$CompleteCardModelImplCopyWithImpl<_$CompleteCardModelImpl>(
          this, _$identity);
}

abstract class _CompleteCardModel extends CompleteCardModel {
  const factory _CompleteCardModel(
      {required final String title,
      required final DateTime completedDateTime,
      required final String message}) = _$CompleteCardModelImpl;
  const _CompleteCardModel._() : super._();

  @override
  String get title;
  @override
  DateTime get completedDateTime;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CompleteCardModelImplCopyWith<_$CompleteCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
