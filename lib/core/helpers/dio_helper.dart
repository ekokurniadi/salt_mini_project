import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioHelper {
  static Dio? dio;

  static void initialDio(String baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: 40000),
        receiveTimeout: const Duration(milliseconds: 40000),
        contentType: 'application/json',
        responseType: ResponseType.json,
      ),
    );
  }

  static void _logInfo(String message) {
    log('\x1B[34m$message\x1B[0m');
  }

  static void _logSuccess(String message) {
    log('\x1B[32m$message\x1B[0m');
  }

  static void _logError(String message) {
    log('\x1B[33m$message\x1B[0m');
  }

  static void setDioLogger(String baseUrl) {
    dio!.interceptors.addAll([
      InterceptorsWrapper(
        onResponse: (response, responseInterceptorHandler) {
          _logSuccess('${response.statusCode} - ${response.data.toString()}\n');
          return responseInterceptorHandler.next(response);
        },
        onRequest: (request, requestInterceptorHandler) {
          _logInfo(
            '${request.method} - ${request.path} - ${request.data} - ${request.queryParameters}',
          );
          return requestInterceptorHandler.next(request);
        },
        onError: (DioError error, errorInterceptor) async {
          _logError(error.message ?? 'Something went wrong');
          return errorInterceptor.next(error);
        },
      ),
    ]);
  }

  static setDioHeader(String? token) {
    dio!.options.headers = {HttpHeaders.authorizationHeader: 'token $token'};
    log('token user: $token');
  }

  static String exception(DioError e) {
    String message = 'Failed to process your request';
    // Handle DioError type-specific errors
    if (e.response != null) {
      _logError('DioError response status: ${e.response!.statusCode}');
      _logError('DioError response data: ${e.response!.data}');
      _logError('DioError response headers: ${e.response!.headers}');
      if (e.response?.data != null) {
        try {
          message = e.response?.data['error'] ?? 'Something went wrong';
        } catch (_) {
          message = e.response?.statusMessage ?? 'Something went wrong';
        }
      }
    } else {
      _logError('DioError: ${e.message}');
      message = e.message ?? 'Something went wrong';
    }
    return message;
  }
}
