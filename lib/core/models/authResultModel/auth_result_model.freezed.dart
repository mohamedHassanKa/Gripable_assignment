// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationResultModel _$AuthenticationResultModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationResultModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationResultModel {
  String get access_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResultModelCopyWith<AuthenticationResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResultModelCopyWith<$Res> {
  factory $AuthenticationResultModelCopyWith(AuthenticationResultModel value,
          $Res Function(AuthenticationResultModel) then) =
      _$AuthenticationResultModelCopyWithImpl<$Res, AuthenticationResultModel>;
  @useResult
  $Res call({String access_token});
}

/// @nodoc
class _$AuthenticationResultModelCopyWithImpl<$Res,
        $Val extends AuthenticationResultModel>
    implements $AuthenticationResultModelCopyWith<$Res> {
  _$AuthenticationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationResultModelImplCopyWith<$Res>
    implements $AuthenticationResultModelCopyWith<$Res> {
  factory _$$AuthenticationResultModelImplCopyWith(
          _$AuthenticationResultModelImpl value,
          $Res Function(_$AuthenticationResultModelImpl) then) =
      __$$AuthenticationResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access_token});
}

/// @nodoc
class __$$AuthenticationResultModelImplCopyWithImpl<$Res>
    extends _$AuthenticationResultModelCopyWithImpl<$Res,
        _$AuthenticationResultModelImpl>
    implements _$$AuthenticationResultModelImplCopyWith<$Res> {
  __$$AuthenticationResultModelImplCopyWithImpl(
      _$AuthenticationResultModelImpl _value,
      $Res Function(_$AuthenticationResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
  }) {
    return _then(_$AuthenticationResultModelImpl(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationResultModelImpl
    with DiagnosticableTreeMixin
    implements _AuthenticationResultModel {
  const _$AuthenticationResultModelImpl({required this.access_token});

  factory _$AuthenticationResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationResultModelImplFromJson(json);

  @override
  final String access_token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationResultModel(access_token: $access_token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationResultModel'))
      ..add(DiagnosticsProperty('access_token', access_token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResultModelImpl &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResultModelImplCopyWith<_$AuthenticationResultModelImpl>
      get copyWith => __$$AuthenticationResultModelImplCopyWithImpl<
          _$AuthenticationResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationResultModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationResultModel implements AuthenticationResultModel {
  const factory _AuthenticationResultModel(
      {required final String access_token}) = _$AuthenticationResultModelImpl;

  factory _AuthenticationResultModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticationResultModelImpl.fromJson;

  @override
  String get access_token;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationResultModelImplCopyWith<_$AuthenticationResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
