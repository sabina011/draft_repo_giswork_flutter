// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkObserve,
    required TResult Function(bool? isConnected) networkNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkObserve,
    TResult? Function(bool? isConnected)? networkNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkObserve,
    TResult Function(bool? isConnected)? networkNotify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectionObserve value) networkObserve,
    required TResult Function(_NetworkConnectionNotify value) networkNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectionObserve value)? networkObserve,
    TResult? Function(_NetworkConnectionNotify value)? networkNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectionObserve value)? networkObserve,
    TResult Function(_NetworkConnectionNotify value)? networkNotify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkConnectionEventCopyWith<$Res> {
  factory $NetworkConnectionEventCopyWith(NetworkConnectionEvent value,
          $Res Function(NetworkConnectionEvent) then) =
      _$NetworkConnectionEventCopyWithImpl<$Res, NetworkConnectionEvent>;
}

/// @nodoc
class _$NetworkConnectionEventCopyWithImpl<$Res,
        $Val extends NetworkConnectionEvent>
    implements $NetworkConnectionEventCopyWith<$Res> {
  _$NetworkConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NetworkConnectionObserveCopyWith<$Res> {
  factory _$$_NetworkConnectionObserveCopyWith(
          _$_NetworkConnectionObserve value,
          $Res Function(_$_NetworkConnectionObserve) then) =
      __$$_NetworkConnectionObserveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkConnectionObserveCopyWithImpl<$Res>
    extends _$NetworkConnectionEventCopyWithImpl<$Res,
        _$_NetworkConnectionObserve>
    implements _$$_NetworkConnectionObserveCopyWith<$Res> {
  __$$_NetworkConnectionObserveCopyWithImpl(_$_NetworkConnectionObserve _value,
      $Res Function(_$_NetworkConnectionObserve) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkConnectionObserve implements _NetworkConnectionObserve {
  const _$_NetworkConnectionObserve();

  @override
  String toString() {
    return 'NetworkConnectionEvent.networkObserve()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkConnectionObserve);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkObserve,
    required TResult Function(bool? isConnected) networkNotify,
  }) {
    return networkObserve();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkObserve,
    TResult? Function(bool? isConnected)? networkNotify,
  }) {
    return networkObserve?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkObserve,
    TResult Function(bool? isConnected)? networkNotify,
    required TResult orElse(),
  }) {
    if (networkObserve != null) {
      return networkObserve();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectionObserve value) networkObserve,
    required TResult Function(_NetworkConnectionNotify value) networkNotify,
  }) {
    return networkObserve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectionObserve value)? networkObserve,
    TResult? Function(_NetworkConnectionNotify value)? networkNotify,
  }) {
    return networkObserve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectionObserve value)? networkObserve,
    TResult Function(_NetworkConnectionNotify value)? networkNotify,
    required TResult orElse(),
  }) {
    if (networkObserve != null) {
      return networkObserve(this);
    }
    return orElse();
  }
}

abstract class _NetworkConnectionObserve implements NetworkConnectionEvent {
  const factory _NetworkConnectionObserve() = _$_NetworkConnectionObserve;
}

/// @nodoc
abstract class _$$_NetworkConnectionNotifyCopyWith<$Res> {
  factory _$$_NetworkConnectionNotifyCopyWith(_$_NetworkConnectionNotify value,
          $Res Function(_$_NetworkConnectionNotify) then) =
      __$$_NetworkConnectionNotifyCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isConnected});
}

/// @nodoc
class __$$_NetworkConnectionNotifyCopyWithImpl<$Res>
    extends _$NetworkConnectionEventCopyWithImpl<$Res,
        _$_NetworkConnectionNotify>
    implements _$$_NetworkConnectionNotifyCopyWith<$Res> {
  __$$_NetworkConnectionNotifyCopyWithImpl(_$_NetworkConnectionNotify _value,
      $Res Function(_$_NetworkConnectionNotify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_$_NetworkConnectionNotify(
      isConnected: freezed == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_NetworkConnectionNotify implements _NetworkConnectionNotify {
  const _$_NetworkConnectionNotify({this.isConnected});

  @override
  final bool? isConnected;

  @override
  String toString() {
    return 'NetworkConnectionEvent.networkNotify(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkConnectionNotify &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkConnectionNotifyCopyWith<_$_NetworkConnectionNotify>
      get copyWith =>
          __$$_NetworkConnectionNotifyCopyWithImpl<_$_NetworkConnectionNotify>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkObserve,
    required TResult Function(bool? isConnected) networkNotify,
  }) {
    return networkNotify(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkObserve,
    TResult? Function(bool? isConnected)? networkNotify,
  }) {
    return networkNotify?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkObserve,
    TResult Function(bool? isConnected)? networkNotify,
    required TResult orElse(),
  }) {
    if (networkNotify != null) {
      return networkNotify(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectionObserve value) networkObserve,
    required TResult Function(_NetworkConnectionNotify value) networkNotify,
  }) {
    return networkNotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectionObserve value)? networkObserve,
    TResult? Function(_NetworkConnectionNotify value)? networkNotify,
  }) {
    return networkNotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectionObserve value)? networkObserve,
    TResult Function(_NetworkConnectionNotify value)? networkNotify,
    required TResult orElse(),
  }) {
    if (networkNotify != null) {
      return networkNotify(this);
    }
    return orElse();
  }
}

abstract class _NetworkConnectionNotify implements NetworkConnectionEvent {
  const factory _NetworkConnectionNotify({final bool? isConnected}) =
      _$_NetworkConnectionNotify;

  bool? get isConnected;
  @JsonKey(ignore: true)
  _$$_NetworkConnectionNotifyCopyWith<_$_NetworkConnectionNotify>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkConnectionStateCopyWith<$Res> {
  factory $NetworkConnectionStateCopyWith(NetworkConnectionState value,
          $Res Function(NetworkConnectionState) then) =
      _$NetworkConnectionStateCopyWithImpl<$Res, NetworkConnectionState>;
}

/// @nodoc
class _$NetworkConnectionStateCopyWithImpl<$Res,
        $Val extends NetworkConnectionState>
    implements $NetworkConnectionStateCopyWith<$Res> {
  _$NetworkConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NetworkConnectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NetworkConnectionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'NetworkConnectionState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NetworkConnectionState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'NetworkConnectionState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NetworkConnectionState {
  const factory _Failure() = _$_Failure;
}
