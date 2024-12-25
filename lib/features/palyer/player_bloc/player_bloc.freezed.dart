// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPlayerApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPlayerApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPlayerApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPlayerApi value) getPlayerApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPlayerApi value)? getPlayerApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPlayerApi value)? getPlayerApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PlayerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPlayerApi,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPlayerApi,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPlayerApi,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPlayerApi value) getPlayerApi,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPlayerApi value)? getPlayerApi,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPlayerApi value)? getPlayerApi,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlayerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPlayerApiImplCopyWith<$Res> {
  factory _$$GetPlayerApiImplCopyWith(
          _$GetPlayerApiImpl value, $Res Function(_$GetPlayerApiImpl) then) =
      __$$GetPlayerApiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlayerApiImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$GetPlayerApiImpl>
    implements _$$GetPlayerApiImplCopyWith<$Res> {
  __$$GetPlayerApiImplCopyWithImpl(
      _$GetPlayerApiImpl _value, $Res Function(_$GetPlayerApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPlayerApiImpl implements _GetPlayerApi {
  const _$GetPlayerApiImpl();

  @override
  String toString() {
    return 'PlayerEvent.getPlayerApi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlayerApiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPlayerApi,
  }) {
    return getPlayerApi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPlayerApi,
  }) {
    return getPlayerApi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPlayerApi,
    required TResult orElse(),
  }) {
    if (getPlayerApi != null) {
      return getPlayerApi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPlayerApi value) getPlayerApi,
  }) {
    return getPlayerApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPlayerApi value)? getPlayerApi,
  }) {
    return getPlayerApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPlayerApi value)? getPlayerApi,
    required TResult orElse(),
  }) {
    if (getPlayerApi != null) {
      return getPlayerApi(this);
    }
    return orElse();
  }
}

abstract class _GetPlayerApi implements PlayerEvent {
  const factory _GetPlayerApi() = _$GetPlayerApiImpl;
}

/// @nodoc
mixin _$PlayerState {
  ApiResponse<BRModel<List<PlayerInfo>>> get playerListResponse =>
      throw _privateConstructorUsedError;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call({ApiResponse<BRModel<List<PlayerInfo>>> playerListResponse});

  $ApiResponseCopyWith<BRModel<List<PlayerInfo>>, $Res> get playerListResponse;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerListResponse = null,
  }) {
    return _then(_value.copyWith(
      playerListResponse: null == playerListResponse
          ? _value.playerListResponse
          : playerListResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BRModel<List<PlayerInfo>>>,
    ) as $Val);
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<BRModel<List<PlayerInfo>>, $Res> get playerListResponse {
    return $ApiResponseCopyWith<BRModel<List<PlayerInfo>>, $Res>(
        _value.playerListResponse, (value) {
      return _then(_value.copyWith(playerListResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<BRModel<List<PlayerInfo>>> playerListResponse});

  @override
  $ApiResponseCopyWith<BRModel<List<PlayerInfo>>, $Res> get playerListResponse;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerListResponse = null,
  }) {
    return _then(_$InitialImpl(
      playerListResponse: null == playerListResponse
          ? _value.playerListResponse
          : playerListResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BRModel<List<PlayerInfo>>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.playerListResponse});

  @override
  final ApiResponse<BRModel<List<PlayerInfo>>> playerListResponse;

  @override
  String toString() {
    return 'PlayerState(playerListResponse: $playerListResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.playerListResponse, playerListResponse) ||
                other.playerListResponse == playerListResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerListResponse);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements PlayerState {
  const factory _Initial(
      {required final ApiResponse<BRModel<List<PlayerInfo>>>
          playerListResponse}) = _$InitialImpl;

  @override
  ApiResponse<BRModel<List<PlayerInfo>>> get playerListResponse;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
