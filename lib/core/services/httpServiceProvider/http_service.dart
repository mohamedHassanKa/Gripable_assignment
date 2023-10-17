import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_problem.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/utils/app_constants.dart';
import 'package:grippable_reddit/utils/toast_service.dart';

class HttpService {
  Dio? _dio;

  final List<Interceptor>? interceptors;

  final Map<String, dynamic>? headers;

  HttpService({this.interceptors, this.headers}) {
    BaseOptions httpOptions = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: const Duration(minutes: 3),
      receiveTimeout: const Duration(minutes: 3),
    );

    _dio = Dio(httpOptions);

    //default headers
    _dio!.options.headers = {
      'User-Agent': 'app',
      'Content-Type': 'application/json',
    };

    if (headers?.isNotEmpty ?? false) {
      _dio!.options.headers.addAll(headers as Map<String, dynamic>);
    }

    if (interceptors?.isNotEmpty ?? false) {
      _dio!.interceptors.addAll(interceptors as Iterable<Interceptor>);
    }

    if (kDebugMode) {
      _dio!.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
          requestBody: false));
    }
  }

  Future<ApiResponse> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    ApiResponse response;

    try {
      var result = await _dio!.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      response = ApiResponse(ApiResponseKind.ok, data: result.data);
    } catch (error) {
      response = await ApiProblem.getGeneralApiProblem(error);

      ToastService.showToast(response.data?.toString() ?? "",
          toastType: ToastType.error);
    }

    return response;
  }

  Future<ApiResponse> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    ApiResponse response;

    try {
      var result = await _dio!.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      response = ApiResponse(ApiResponseKind.ok, data: result.data);
    } catch (error) {
      response = await ApiProblem.getGeneralApiProblem(error);

      ToastService.showToast(response.data?.toString() ?? "",
          toastType: ToastType.error);
    }

    return response;
  }
}
