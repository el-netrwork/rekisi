// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_page_content_controller_keep_alive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryPageContentState {
  bool get isShowDownloadMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryPageContentStateCopyWith<HistoryPageContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryPageContentStateCopyWith<$Res> {
  factory $HistoryPageContentStateCopyWith(HistoryPageContentState value,
          $Res Function(HistoryPageContentState) then) =
      _$HistoryPageContentStateCopyWithImpl<$Res, HistoryPageContentState>;
  @useResult
  $Res call({bool isShowDownloadMessage});
}

/// @nodoc
class _$HistoryPageContentStateCopyWithImpl<$Res,
        $Val extends HistoryPageContentState>
    implements $HistoryPageContentStateCopyWith<$Res> {
  _$HistoryPageContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowDownloadMessage = null,
  }) {
    return _then(_value.copyWith(
      isShowDownloadMessage: null == isShowDownloadMessage
          ? _value.isShowDownloadMessage
          : isShowDownloadMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryPageContentStateImplCopyWith<$Res>
    implements $HistoryPageContentStateCopyWith<$Res> {
  factory _$$HistoryPageContentStateImplCopyWith(
          _$HistoryPageContentStateImpl value,
          $Res Function(_$HistoryPageContentStateImpl) then) =
      __$$HistoryPageContentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isShowDownloadMessage});
}

/// @nodoc
class __$$HistoryPageContentStateImplCopyWithImpl<$Res>
    extends _$HistoryPageContentStateCopyWithImpl<$Res,
        _$HistoryPageContentStateImpl>
    implements _$$HistoryPageContentStateImplCopyWith<$Res> {
  __$$HistoryPageContentStateImplCopyWithImpl(
      _$HistoryPageContentStateImpl _value,
      $Res Function(_$HistoryPageContentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowDownloadMessage = null,
  }) {
    return _then(_$HistoryPageContentStateImpl(
      isShowDownloadMessage: null == isShowDownloadMessage
          ? _value.isShowDownloadMessage
          : isShowDownloadMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HistoryPageContentStateImpl implements _HistoryPageContentState {
  const _$HistoryPageContentStateImpl({this.isShowDownloadMessage = true});

  @override
  @JsonKey()
  final bool isShowDownloadMessage;

  @override
  String toString() {
    return 'HistoryPageContentState(isShowDownloadMessage: $isShowDownloadMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryPageContentStateImpl &&
            (identical(other.isShowDownloadMessage, isShowDownloadMessage) ||
                other.isShowDownloadMessage == isShowDownloadMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowDownloadMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryPageContentStateImplCopyWith<_$HistoryPageContentStateImpl>
      get copyWith => __$$HistoryPageContentStateImplCopyWithImpl<
          _$HistoryPageContentStateImpl>(this, _$identity);
}

abstract class _HistoryPageContentState implements HistoryPageContentState {
  const factory _HistoryPageContentState({final bool isShowDownloadMessage}) =
      _$HistoryPageContentStateImpl;

  @override
  bool get isShowDownloadMessage;
  @override
  @JsonKey(ignore: true)
  _$$HistoryPageContentStateImplCopyWith<_$HistoryPageContentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
