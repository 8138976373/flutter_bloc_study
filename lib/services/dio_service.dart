import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../utils/endpoints.dart';
import '../utils/di/injection.dart';
import 'shared_pref_service.dart';

enum Method {
  get,
  post,
  put,
  delete,
}

@LazySingleton()
class DioService {
  final Dio dio;

  SharedPrefService sharedPS = getIt<SharedPrefService>();

  DioService()
      : dio = Dio(BaseOptions(
          baseUrl: EndPoints.baseUrl,
        )) {
    dio.interceptors.add(DioInterceptor());
  }

  Future<Either<CustomDioException, Response>> request(
    String endpoint, {
    required Method method,
    Map<String, dynamic>? body,
    Map<String, dynamic>? requestParam,
    dynamic formData,
  }) async {
    try {
      Response? response;

      switch (method) {
        case Method.post:
          response = await dio.post(endpoint, data: body ?? formData);
          break;
        case Method.get:
          response = await dio.get(endpoint, queryParameters: requestParam);
          break;
        case Method.put:
          response = await dio.put(endpoint, data: body ?? formData);
          break;
        case Method.delete:
          response = await dio.delete(endpoint, data: body ?? formData);
          break;
        }

      final data = response.data['data'];

      if (method == Method.post &&
          data is! int &&
          data?['token'] != null &&
          data is! List) {
        // keep token in local db
      }

      return Right(response);
    } on DioException catch (e) {
      String? errorMsg;
      try {
        errorMsg = e.response?.data?['message'];
      } catch (e) {
        // exception //
      }
      return Left(CustomDioException(
        message: errorMsg ?? returnDioErrorMessage(e),
        statusCode: e.response?.statusCode,
      ));
    } catch (e) {
      log(e.toString(), name: "Dio error");
      return Left(CustomDioException(message: "Oops!\nSomething went wrong"));
    }
  }
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String? token = getIt<SharedPrefService>().getString("token");

    options.headers.addAll({
      "Content-Type": "application/json",
      "accept": "application/json",
      if (token != null) "Authorization": "Bearer $token",
    });

    log(jsonEncode(options.data), name: "Post data");
    log("${options.uri}", name: "req uri");

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("${response.statusCode}", name: "statusCode");
    log("${response.data}", name: "Response.data");
    log("= = = = = = = = = = = = = = = = = = = = = = = = = = = =");
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    log(
      "${err.response?.statusCode} ${err.response?.data}",
      name: "DioException.Error",
    );
    if (err.response?.statusCode == 401) {
      // getIt<AppRouter>().pushNamed(RouteMobileNames.loginScreen);
      getIt<SharedPrefService>().remove("token");
    }
    super.onError(err, handler);
  }
}

class CustomDioException implements Exception {
  final String message;
  final int? statusCode;

  CustomDioException({required this.message, this.statusCode});

  @override
  String toString() =>
      'CustomDioException: $message (Status code: $statusCode)';
}

String returnDioErrorMessage(DioException e) {
  String message = "Something went wrong";
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      message =
          "The operation has timed out. Please check your internet connection and try again.";
      break;
    case DioExceptionType.sendTimeout:
      message =
          "The operation has timed out. Please check your internet connection and try again.";
      break;

    case DioExceptionType.receiveTimeout:
      message =
          "The operation has timed out. Please check your internet connection and try again.";
      break;

    case DioExceptionType.badCertificate:
      message = "Oops!\nSomething went wrong";
      break;

    case DioExceptionType.badResponse:
      // Handling server failures here
      if (e.response != null && e.response?.statusCode != null) {
        if (kReleaseMode) {
          message =
              '''We're experiencing some technical difficulties at the moment. Please try again shortly, and if the issue continues, feel free to reach out to our support team for assistance. We appreciate your patience!''';
        } else {
          message =
              "Server error: ${e.response?.statusCode} ${e.response?.statusMessage}";
        }
      } else {
        message = "Server responded with an unexpected error.";
      }
      break;

    case DioExceptionType.cancel:
      message = "Something went wrong";
      break;

    case DioExceptionType.connectionError:
      message =
          '''We're sorry, but it seems there's a problem with your network connection. Please check your internet connection and try again.''';
      break;

    case DioExceptionType.unknown:
      message = "Something went wrong";
      break;
  }
  return message;
}
