// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedData _$FeedDataFromJson(Map<String, dynamic> json) {
  return _FeedData.fromJson(json);
}

/// @nodoc
mixin _$FeedData {
  List<Post> get children => throw _privateConstructorUsedError;
  String get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDataCopyWith<FeedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDataCopyWith<$Res> {
  factory $FeedDataCopyWith(FeedData value, $Res Function(FeedData) then) =
      _$FeedDataCopyWithImpl<$Res, FeedData>;
  @useResult
  $Res call({List<Post> children, String after});
}

/// @nodoc
class _$FeedDataCopyWithImpl<$Res, $Val extends FeedData>
    implements $FeedDataCopyWith<$Res> {
  _$FeedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? after = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      after: null == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedDataImplCopyWith<$Res>
    implements $FeedDataCopyWith<$Res> {
  factory _$$FeedDataImplCopyWith(
          _$FeedDataImpl value, $Res Function(_$FeedDataImpl) then) =
      __$$FeedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Post> children, String after});
}

/// @nodoc
class __$$FeedDataImplCopyWithImpl<$Res>
    extends _$FeedDataCopyWithImpl<$Res, _$FeedDataImpl>
    implements _$$FeedDataImplCopyWith<$Res> {
  __$$FeedDataImplCopyWithImpl(
      _$FeedDataImpl _value, $Res Function(_$FeedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? after = null,
  }) {
    return _then(_$FeedDataImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      after: null == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedDataImpl implements _FeedData {
  const _$FeedDataImpl(
      {required final List<Post> children, required this.after})
      : _children = children;

  factory _$FeedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedDataImplFromJson(json);

  final List<Post> _children;
  @override
  List<Post> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final String after;

  @override
  String toString() {
    return 'FeedData(children: $children, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDataImpl &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_children), after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDataImplCopyWith<_$FeedDataImpl> get copyWith =>
      __$$FeedDataImplCopyWithImpl<_$FeedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedDataImplToJson(
      this,
    );
  }
}

abstract class _FeedData implements FeedData {
  const factory _FeedData(
      {required final List<Post> children,
      required final String after}) = _$FeedDataImpl;

  factory _FeedData.fromJson(Map<String, dynamic> json) =
      _$FeedDataImpl.fromJson;

  @override
  List<Post> get children;
  @override
  String get after;
  @override
  @JsonKey(ignore: true)
  _$$FeedDataImplCopyWith<_$FeedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
