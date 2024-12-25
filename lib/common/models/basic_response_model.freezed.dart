// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BRModel<T> _$BRModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BRModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BRModel<T> {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get totalRecords => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Serializes this BRModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BRModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BRModelCopyWith<T, BRModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BRModelCopyWith<T, $Res> {
  factory $BRModelCopyWith(BRModel<T> value, $Res Function(BRModel<T>) then) =
      _$BRModelCopyWithImpl<T, $Res, BRModel<T>>;
  @useResult
  $Res call(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? totalRecords,
      bool? isSuccess,
      T? data,
      String? message,
      int? code});
}

/// @nodoc
class _$BRModelCopyWithImpl<T, $Res, $Val extends BRModel<T>>
    implements $BRModelCopyWith<T, $Res> {
  _$BRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BRModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? pageSize = freezed,
    Object? totalRecords = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BRModelImplCopyWith<T, $Res>
    implements $BRModelCopyWith<T, $Res> {
  factory _$$BRModelImplCopyWith(
          _$BRModelImpl<T> value, $Res Function(_$BRModelImpl<T>) then) =
      __$$BRModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? totalRecords,
      bool? isSuccess,
      T? data,
      String? message,
      int? code});
}

/// @nodoc
class __$$BRModelImplCopyWithImpl<T, $Res>
    extends _$BRModelCopyWithImpl<T, $Res, _$BRModelImpl<T>>
    implements _$$BRModelImplCopyWith<T, $Res> {
  __$$BRModelImplCopyWithImpl(
      _$BRModelImpl<T> _value, $Res Function(_$BRModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BRModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? pageSize = freezed,
    Object? totalRecords = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$BRModelImpl<T>(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BRModelImpl<T> implements _BRModel<T> {
  _$BRModelImpl(
      {this.currentPage,
      this.totalPages,
      this.pageSize,
      this.totalRecords,
      this.isSuccess,
      this.data,
      this.message,
      this.code});

  factory _$BRModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BRModelImplFromJson(json, fromJsonT);

  @override
  final int? currentPage;
  @override
  final int? totalPages;
  @override
  final int? pageSize;
  @override
  final int? totalRecords;
  @override
  final bool? isSuccess;
  @override
  final T? data;
  @override
  final String? message;
  @override
  final int? code;

  @override
  String toString() {
    return 'BRModel<$T>(currentPage: $currentPage, totalPages: $totalPages, pageSize: $pageSize, totalRecords: $totalRecords, isSuccess: $isSuccess, data: $data, message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BRModelImpl<T> &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      totalPages,
      pageSize,
      totalRecords,
      isSuccess,
      const DeepCollectionEquality().hash(data),
      message,
      code);

  /// Create a copy of BRModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BRModelImplCopyWith<T, _$BRModelImpl<T>> get copyWith =>
      __$$BRModelImplCopyWithImpl<T, _$BRModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BRModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BRModel<T> implements BRModel<T> {
  factory _BRModel(
      {final int? currentPage,
      final int? totalPages,
      final int? pageSize,
      final int? totalRecords,
      final bool? isSuccess,
      final T? data,
      final String? message,
      final int? code}) = _$BRModelImpl<T>;

  factory _BRModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BRModelImpl<T>.fromJson;

  @override
  int? get currentPage;
  @override
  int? get totalPages;
  @override
  int? get pageSize;
  @override
  int? get totalRecords;
  @override
  bool? get isSuccess;
  @override
  T? get data;
  @override
  String? get message;
  @override
  int? get code;

  /// Create a copy of BRModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BRModelImplCopyWith<T, _$BRModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
