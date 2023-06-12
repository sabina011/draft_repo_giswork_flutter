// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_package_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadPackageEvent {
  bool get isCompletePackage => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get userSingleDayList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCompletePackage,
            List<Map<String, dynamic>> userSingleDayList)
        upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCompletePackage,
            List<Map<String, dynamic>> userSingleDayList)?
        upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCompletePackage,
            List<Map<String, dynamic>> userSingleDayList)?
        upload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadEvent value) upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadEvent value)? upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadEvent value)? upload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadPackageEventCopyWith<UploadPackageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPackageEventCopyWith<$Res> {
  factory $UploadPackageEventCopyWith(
          UploadPackageEvent value, $Res Function(UploadPackageEvent) then) =
      _$UploadPackageEventCopyWithImpl<$Res, UploadPackageEvent>;
  @useResult
  $Res call(
      {bool isCompletePackage, List<Map<String, dynamic>> userSingleDayList});
}

/// @nodoc
class _$UploadPackageEventCopyWithImpl<$Res, $Val extends UploadPackageEvent>
    implements $UploadPackageEventCopyWith<$Res> {
  _$UploadPackageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompletePackage = null,
    Object? userSingleDayList = null,
  }) {
    return _then(_value.copyWith(
      isCompletePackage: null == isCompletePackage
          ? _value.isCompletePackage
          : isCompletePackage // ignore: cast_nullable_to_non_nullable
              as bool,
      userSingleDayList: null == userSingleDayList
          ? _value.userSingleDayList
          : userSingleDayList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadEventCopyWith<$Res>
    implements $UploadPackageEventCopyWith<$Res> {
  factory _$$_UploadEventCopyWith(
          _$_UploadEvent value, $Res Function(_$_UploadEvent) then) =
      __$$_UploadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCompletePackage, List<Map<String, dynamic>> userSingleDayList});
}

/// @nodoc
class __$$_UploadEventCopyWithImpl<$Res>
    extends _$UploadPackageEventCopyWithImpl<$Res, _$_UploadEvent>
    implements _$$_UploadEventCopyWith<$Res> {
  __$$_UploadEventCopyWithImpl(
      _$_UploadEvent _value, $Res Function(_$_UploadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompletePackage = null,
    Object? userSingleDayList = null,
  }) {
    return _then(_$_UploadEvent(
      isCompletePackage: null == isCompletePackage
          ? _value.isCompletePackage
          : isCompletePackage // ignore: cast_nullable_to_non_nullable
              as bool,
      userSingleDayList: null == userSingleDayList
          ? _value._userSingleDayList
          : userSingleDayList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_UploadEvent implements _UploadEvent {
  const _$_UploadEvent(
      {required this.isCompletePackage,
      required final List<Map<String, dynamic>> userSingleDayList})
      : _userSingleDayList = userSingleDayList;

  @override
  final bool isCompletePackage;
  final List<Map<String, dynamic>> _userSingleDayList;
  @override
  List<Map<String, dynamic>> get userSingleDayList {
    if (_userSingleDayList is EqualUnmodifiableListView)
      return _userSingleDayList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userSingleDayList);
  }

  @override
  String toString() {
    return 'UploadPackageEvent.upload(isCompletePackage: $isCompletePackage, userSingleDayList: $userSingleDayList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadEvent &&
            (identical(other.isCompletePackage, isCompletePackage) ||
                other.isCompletePackage == isCompletePackage) &&
            const DeepCollectionEquality()
                .equals(other._userSingleDayList, _userSingleDayList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCompletePackage,
      const DeepCollectionEquality().hash(_userSingleDayList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadEventCopyWith<_$_UploadEvent> get copyWith =>
      __$$_UploadEventCopyWithImpl<_$_UploadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCompletePackage,
            List<Map<String, dynamic>> userSingleDayList)
        upload,
  }) {
    return upload(isCompletePackage, userSingleDayList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCompletePackage,
            List<Map<String, dynamic>> userSingleDayList)?
        upload,
  }) {
    return upload?.call(isCompletePackage, userSingleDayList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCompletePackage,
            List<Map<String, dynamic>> userSingleDayList)?
        upload,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(isCompletePackage, userSingleDayList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadEvent value) upload,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadEvent value)? upload,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadEvent value)? upload,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class _UploadEvent implements UploadPackageEvent {
  const factory _UploadEvent(
          {required final bool isCompletePackage,
          required final List<Map<String, dynamic>> userSingleDayList}) =
      _$_UploadEvent;

  @override
  bool get isCompletePackage;
  @override
  List<Map<String, dynamic>> get userSingleDayList;
  @override
  @JsonKey(ignore: true)
  _$$_UploadEventCopyWith<_$_UploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadPackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadPackageResponse uploadPackageResponse)
        success,
    required TResult Function(String errMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult? Function(String errMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPackageStateCopyWith<$Res> {
  factory $UploadPackageStateCopyWith(
          UploadPackageState value, $Res Function(UploadPackageState) then) =
      _$UploadPackageStateCopyWithImpl<$Res, UploadPackageState>;
}

/// @nodoc
class _$UploadPackageStateCopyWithImpl<$Res, $Val extends UploadPackageState>
    implements $UploadPackageStateCopyWith<$Res> {
  _$UploadPackageStateCopyWithImpl(this._value, this._then);

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
    extends _$UploadPackageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UploadPackageState.initial()';
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
    required TResult Function() loading,
    required TResult Function(UploadPackageResponse uploadPackageResponse)
        success,
    required TResult Function(String errMsg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult Function(String errMsg)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UploadPackageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UploadPackageStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UploadPackageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadPackageResponse uploadPackageResponse)
        success,
    required TResult Function(String errMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UploadPackageState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadPackageResponse uploadPackageResponse});

  $UploadPackageResponseCopyWith<$Res> get uploadPackageResponse;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$UploadPackageStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadPackageResponse = null,
  }) {
    return _then(_$_Success(
      uploadPackageResponse: null == uploadPackageResponse
          ? _value.uploadPackageResponse
          : uploadPackageResponse // ignore: cast_nullable_to_non_nullable
              as UploadPackageResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadPackageResponseCopyWith<$Res> get uploadPackageResponse {
    return $UploadPackageResponseCopyWith<$Res>(_value.uploadPackageResponse,
        (value) {
      return _then(_value.copyWith(uploadPackageResponse: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.uploadPackageResponse});

  @override
  final UploadPackageResponse uploadPackageResponse;

  @override
  String toString() {
    return 'UploadPackageState.success(uploadPackageResponse: $uploadPackageResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.uploadPackageResponse, uploadPackageResponse) ||
                other.uploadPackageResponse == uploadPackageResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uploadPackageResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadPackageResponse uploadPackageResponse)
        success,
    required TResult Function(String errMsg) error,
  }) {
    return success(uploadPackageResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return success?.call(uploadPackageResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(uploadPackageResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UploadPackageState {
  const factory _Success(
          {required final UploadPackageResponse uploadPackageResponse}) =
      _$_Success;

  UploadPackageResponse get uploadPackageResponse;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$UploadPackageStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$_Error(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.errMsg});

  @override
  final String errMsg;

  @override
  String toString() {
    return 'UploadPackageState.error(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadPackageResponse uploadPackageResponse)
        success,
    required TResult Function(String errMsg) error,
  }) {
    return error(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return error?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadPackageResponse uploadPackageResponse)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UploadPackageState {
  const factory _Error({required final String errMsg}) = _$_Error;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
