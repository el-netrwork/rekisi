// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worship_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorshipCard {
  String get shrineName => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime? get getDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorshipCardCopyWith<WorshipCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorshipCardCopyWith<$Res> {
  factory $WorshipCardCopyWith(
          WorshipCard value, $Res Function(WorshipCard) then) =
      _$WorshipCardCopyWithImpl<$Res, WorshipCard>;
  @useResult
  $Res call(
      {String shrineName,
      String message,
      int? number,
      int? id,
      String address,
      DateTime? getDate});
}

/// @nodoc
class _$WorshipCardCopyWithImpl<$Res, $Val extends WorshipCard>
    implements $WorshipCardCopyWith<$Res> {
  _$WorshipCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shrineName = null,
    Object? message = null,
    Object? number = freezed,
    Object? id = freezed,
    Object? address = null,
    Object? getDate = freezed,
  }) {
    return _then(_value.copyWith(
      shrineName: null == shrineName
          ? _value.shrineName
          : shrineName // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      getDate: freezed == getDate
          ? _value.getDate
          : getDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorshipCardImplCopyWith<$Res>
    implements $WorshipCardCopyWith<$Res> {
  factory _$$WorshipCardImplCopyWith(
          _$WorshipCardImpl value, $Res Function(_$WorshipCardImpl) then) =
      __$$WorshipCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shrineName,
      String message,
      int? number,
      int? id,
      String address,
      DateTime? getDate});
}

/// @nodoc
class __$$WorshipCardImplCopyWithImpl<$Res>
    extends _$WorshipCardCopyWithImpl<$Res, _$WorshipCardImpl>
    implements _$$WorshipCardImplCopyWith<$Res> {
  __$$WorshipCardImplCopyWithImpl(
      _$WorshipCardImpl _value, $Res Function(_$WorshipCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shrineName = null,
    Object? message = null,
    Object? number = freezed,
    Object? id = freezed,
    Object? address = null,
    Object? getDate = freezed,
  }) {
    return _then(_$WorshipCardImpl(
      shrineName: null == shrineName
          ? _value.shrineName
          : shrineName // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      getDate: freezed == getDate
          ? _value.getDate
          : getDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$WorshipCardImpl extends _WorshipCard {
  const _$WorshipCardImpl(
      {this.shrineName = '',
      this.message = '',
      this.number,
      this.id,
      this.address = '',
      this.getDate})
      : super._();

  @override
  @JsonKey()
  final String shrineName;
  @override
  @JsonKey()
  final String message;
  @override
  final int? number;
  @override
  final int? id;
  @override
  @JsonKey()
  final String address;
  @override
  final DateTime? getDate;

  @override
  String toString() {
    return 'WorshipCard(shrineName: $shrineName, message: $message, number: $number, id: $id, address: $address, getDate: $getDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorshipCardImpl &&
            (identical(other.shrineName, shrineName) ||
                other.shrineName == shrineName) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.getDate, getDate) || other.getDate == getDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, shrineName, message, number, id, address, getDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorshipCardImplCopyWith<_$WorshipCardImpl> get copyWith =>
      __$$WorshipCardImplCopyWithImpl<_$WorshipCardImpl>(this, _$identity);
}

abstract class _WorshipCard extends WorshipCard {
  const factory _WorshipCard(
      {final String shrineName,
      final String message,
      final int? number,
      final int? id,
      final String address,
      final DateTime? getDate}) = _$WorshipCardImpl;
  const _WorshipCard._() : super._();

  @override
  String get shrineName;
  @override
  String get message;
  @override
  int? get number;
  @override
  int? get id;
  @override
  String get address;
  @override
  DateTime? get getDate;
  @override
  @JsonKey(ignore: true)
  _$$WorshipCardImplCopyWith<_$WorshipCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
