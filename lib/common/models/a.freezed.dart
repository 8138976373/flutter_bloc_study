// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

A _$AFromJson(Map<String, dynamic> json) {
  return _A.fromJson(json);
}

/// @nodoc
mixin _$A {
  /// Serializes this A to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ACopyWith<$Res> {
  factory $ACopyWith(A value, $Res Function(A) then) = _$ACopyWithImpl<$Res, A>;
}

/// @nodoc
class _$ACopyWithImpl<$Res, $Val extends A> implements $ACopyWith<$Res> {
  _$ACopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AImplCopyWith<$Res> {
  factory _$$AImplCopyWith(_$AImpl value, $Res Function(_$AImpl) then) =
      __$$AImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AImplCopyWithImpl<$Res> extends _$ACopyWithImpl<$Res, _$AImpl>
    implements _$$AImplCopyWith<$Res> {
  __$$AImplCopyWithImpl(_$AImpl _value, $Res Function(_$AImpl) _then)
      : super(_value, _then);

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AImpl implements _A {
  _$AImpl();

  factory _$AImpl.fromJson(Map<String, dynamic> json) => _$$AImplFromJson(json);

  @override
  String toString() {
    return 'A()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AImplToJson(
      this,
    );
  }
}

abstract class _A implements A {
  factory _A() = _$AImpl;

  factory _A.fromJson(Map<String, dynamic> json) = _$AImpl.fromJson;
}
