enum ApiResponseKind {
  requestCancelled,
  requestTimeout,
  noInternetConnection,
  sendTimeout,
  badCertificate,
  badRequest,
  unauthorisedRequest,
  notFound,
  internalServerError,
  unexpectedError,
  formatException,
  unableToProcess,
  ok,
}

class ApiResponse {
  final ApiResponseKind kind;
  dynamic data;

  ApiResponse(this.kind, {this.data});
}
