import 'package:freezed_annotation/freezed_annotation.dart';
part 'basic_response_model.g.dart';
part 'basic_response_model.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BRModel<T> with _$BRModel<T> {
  factory BRModel({
    int? currentPage,
    int? totalPages,
    int? pageSize,
    int? totalRecords,
    bool? isSuccess,
    T? data,
    String? message,
    int? code,
  }) = _BRModel;

  factory BRModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BRModelFromJson(json, fromJsonT);
}
