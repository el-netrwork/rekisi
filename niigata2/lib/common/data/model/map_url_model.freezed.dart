// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapUrlModel {
  String get appId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapUrlModelCopyWith<MapUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapUrlModelCopyWith<$Res> {
  factory $MapUrlModelCopyWith(
          MapUrlModel value, $Res Function(MapUrlModel) then) =
      _$MapUrlModelCopyWithImpl<$Res, MapUrlModel>;
  @useResult
  $Res call({String appId, String url});
}

/// @nodoc
class _$MapUrlModelCopyWithImpl<$Res, $Val extends MapUrlModel>
    implements $MapUrlModelCopyWith<$Res> {
  _$MapUrlModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MapUrlModelImplCopyWith<$Res>
    implements $MapUrlModelCopyWith<$Res> {
  factory _$$MapUrlModelImplCopyWith(
          _$MapUrlModelImpl value, $Res Function(_$MapUrlModelImpl) then) =
      __$$MapUrlModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appId, String url});
}

/// @nodoc
class __$$MapUrlModelImplCopyWithImpl<$Res>
    extends _$MapUrlModelCopyWithImpl<$Res, _$MapUrlModelImpl>
    implements _$$MapUrlModelImplCopyWith<$Res> {
  __$$MapUrlModelImplCopyWithImpl(
      _$MapUrlModelImpl _value, $Res Function(_$MapUrlModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? url = null,
  }) {
    return _then(_$MapUrlModelImpl(
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

class _$MapUrlModelImpl extends _MapUrlModel {
  const _$MapUrlModelImpl({required this.appId, required this.url}) : super._();

  @override
  final String appId;
  @override
  final String url;

  @override
  String toString() {
    return 'MapUrlModel(appId: $appId, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapUrlModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appId, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapUrlModelImplCopyWith<_$MapUrlModelImpl> get copyWith =>
      __$$MapUrlModelImplCopyWithImpl<_$MapUrlModelImpl>(this, _$identity);
}

abstract class _MapUrlModel extends MapUrlModel {
  const factory _MapUrlModel(
      {required final String appId,
      required final String url}) = _$MapUrlModelImpl;
  const _MapUrlModel._() : super._();

  @override
  String get appId;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$MapUrlModelImplCopyWith<_$MapUrlModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
