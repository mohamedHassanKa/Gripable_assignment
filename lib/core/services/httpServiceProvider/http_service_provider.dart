import 'package:dio/dio.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_service_provider.g.dart';

@riverpod
HttpService httpService(HttpServiceRef ref) {
  return HttpService();
}
