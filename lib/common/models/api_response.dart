

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse({
    T? apiData,
    String? errorMessage,
    String? successMessage,
    @Default(false) bool loading,
    @Default(false) bool paginationLoading,
  }) = _ApiResponse<T>;
}

// class APIResponse<T> {
//   T data;
//   bool error;
//   int status;
//   int responseCode;
//   String message;
//   bool loading;
//   int pageNo;
//   bool pagination;

//   APIResponse({
//     required this.data,
//     this.status = 1000,
//     this.responseCode = 0,
//     this.message = '',
//     this.loading = false,
//     this.error = false,
//     this.pageNo = 1,
//     this.pagination = true,
//   });
// }

class ClientErrorResponse {
  String? appData;
  String? devData;
  ClientErrorResponse({this.appData, this.devData});

  ClientErrorResponse.fromJson(Map<String, dynamic> json) {
    appData = json["app_data"];
    devData = json["dev_data"];
  }
}

class APIErrorResponse<T> {
  int statusCode;
  String message;

  APIErrorResponse({this.statusCode = 500, this.message = 'Server not found!'});
}
