// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BRModelImpl<T> _$$BRModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BRModelImpl<T>(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalRecords: (json['totalRecords'] as num?)?.toInt(),
      isSuccess: json['isSuccess'] as bool?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BRModelImplToJson<T>(
  _$BRModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'totalRecords': instance.totalRecords,
      'isSuccess': instance.isSuccess,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'message': instance.message,
      'code': instance.code,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
