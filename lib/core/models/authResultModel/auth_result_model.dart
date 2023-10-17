import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_result_model.freezed.dart';
part 'auth_result_model.g.dart';

@freezed
class AuthenticationResultModel with _$AuthenticationResultModel {
  const factory AuthenticationResultModel({required String access_token}) =
      _AuthenticationResultModel;

  factory AuthenticationResultModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResultModelFromJson(json);
}
