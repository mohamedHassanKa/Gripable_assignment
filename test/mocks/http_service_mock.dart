import 'package:dio/dio.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service.dart';

const mockData = {
  'data': {
    'after': 't3_qq3q3q',
    'children': [
      {
        'data': {
          'title': 'Test Title',
          'author': 'Test Author',
          'created_utc': 1612345678,
          'thumbnail': 'https://test.com/test.png',
          'num_comments': 10,
          'score': 100,
          'url': 'https://test.com/test',
        },
      },
    ],
  },
};

class HttpServiceMock implements HttpService {
  @override
  Future<ApiResponse> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    return Future.value(
      ApiResponse(ApiResponseKind.ok, data: mockData),
    );
  }

  @override
  Future<ApiResponse> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return Future.value(
      ApiResponse(ApiResponseKind.ok, data: mockData),
    );
  }

  @override
  Map<String, dynamic>? get headers => ({'Content-Type': 'application/json'});

  @override
  List<Interceptor>? get interceptors => null;
}
