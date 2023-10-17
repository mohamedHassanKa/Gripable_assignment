import 'dart:io';

import 'package:dio/dio.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';

class ApiProblem {
  static Future<ApiResponse> getGeneralApiProblem(error) async {
    if (error is Exception) {
      try {
        ApiResponse apiResponse = ApiResponse(ApiResponseKind.unexpectedError);
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              apiResponse = ApiResponse(ApiResponseKind.requestCancelled,
                  data: "RequestCancelled");
              break;
            case DioExceptionType.connectionTimeout:
              apiResponse = ApiResponse(ApiResponseKind.requestTimeout,
                  data: "RequestTimeout");
              break;
            case DioExceptionType.unknown:
            case DioExceptionType.connectionError:
              apiResponse = ApiResponse(ApiResponseKind.noInternetConnection,
                  data:
                      "No internet connection. Please check your network connections");
              break;
            case DioExceptionType.receiveTimeout:
              apiResponse = ApiResponse(ApiResponseKind.sendTimeout,
                  data: "RECEIVE_TIMEOUT");
              break;
            case DioExceptionType.badCertificate:
              apiResponse = ApiResponse(ApiResponseKind.badCertificate,
                  data: "bad certificate");
              break;
            case DioExceptionType.badResponse:
              final message = error.response?.data["message"];

              // print(error.request.headers.toString());
              switch (error.response?.statusCode) {
                case 400:
                  apiResponse =
                      ApiResponse(ApiResponseKind.badRequest, data: message);
                  break;
                case 401:
                  apiResponse = ApiResponse(ApiResponseKind.unauthorisedRequest,
                      data: message);

                  break;
                case 404:
                  apiResponse =
                      ApiResponse(ApiResponseKind.notFound, data: message);
                  break;
                case 500:
                  apiResponse = ApiResponse(ApiResponseKind.internalServerError,
                      data: message);
                  break;
              }
              break;
            case DioExceptionType.sendTimeout:
              apiResponse = ApiResponse(ApiResponseKind.sendTimeout);
              break;
          }
        } else if (error is SocketException) {
          apiResponse = ApiResponse(ApiResponseKind.noInternetConnection);
        } else {
          apiResponse = ApiResponse(ApiResponseKind.unexpectedError);
        }

        return apiResponse;
      } on FormatException {
        // Helper.printError(e.toString());
        return ApiResponse(ApiResponseKind.formatException,
            data: "Unable to process the data");
      } catch (_) {
        return ApiResponse(
          ApiResponseKind.unexpectedError,
        );
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return ApiResponse(ApiResponseKind.unableToProcess,
            data: error.toString());
      } else {
        return ApiResponse(
          ApiResponseKind.unexpectedError,
        );
      }
    }
  }
}
