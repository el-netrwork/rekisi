// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_card_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompleteCardDataModel {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteCardDataModelCopyWith<CompleteCardDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteCardDataModelCopyWith<$Res> {
  factory $CompleteCardDataModelCopyWith(CompleteCardDataModel value,
          $Res Function(CompleteCardDataModel) then) =
      _$CompleteCardDataModelCopyWithImpl<$Res, CompleteCardDataModel>;
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class _$CompleteCardDataModelCopyWithImpl<$Res,
        $Val extends CompleteCardDataModel>
    implements $CompleteCardDataModelCopyWith<$Res> {
  _$CompleteCardDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CompleteCardDataModelImplCopyWith<$Res>
    implements $CompleteCardDataModelCopyWith<$Res> {
  factory _$$CompleteCardDataModelImplCopyWith(
          _$CompleteCardDataModelImpl value,
          $Res Function(_$CompleteCardDataModelImpl) then) =
      __$$CompleteCardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class __$$CompleteCardDataModelImplCopyWithImpl<$Res>
    extends _$CompleteCardDataModelCopyWithImpl<$Res,
        _$CompleteCardDataModelImpl>
    implements _$$CompleteCardDataModelImplCopyWith<$Res> {
  __$$CompleteCardDataModelImplCopyWithImpl(_$CompleteCardDataModelImpl _value,
      $Res Function(_$CompleteCardDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$CompleteCardDataModelImpl(
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

class _$CompleteCardDataModelImpl extends _CompleteCardDataModel {
  const _$CompleteCardDataModelImpl(
      {required this.title, required this.message})
      : super._();

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'CompleteCardDataModel(title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteCardDataModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteCardDataModelImplCopyWith<_$CompleteCardDataModelImpl>
      get copyWith => __$$CompleteCardDataModelImplCopyWithImpl<
          _$CompleteCardDataModelImpl>(this, _$identity);
}

abstract class _CompleteCardDataModel extends CompleteCardDataModel {
  const factory _CompleteCardDataModel(
      {required final String title,
      required final String message}) = _$CompleteCardDataModelImpl;
  const _CompleteCardDataModel._() : super._();

  @override
  String get title;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CompleteCardDataModelImplCopyWith<_$CompleteCardDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
