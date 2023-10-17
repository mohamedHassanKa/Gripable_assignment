// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditListing _$RedditListingFromJson(Map<String, dynamic> json) {
  return _RedditListing.fromJson(json);
}

/// @nodoc
mixin _$RedditListing {
  String? get after => throw _privateConstructorUsedError;
  @JsonKey(name: "children")
  List<RedditListingItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditListingCopyWith<RedditListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditListingCopyWith<$Res> {
  factory $RedditListingCopyWith(
          RedditListing value, $Res Function(RedditListing) then) =
      _$RedditListingCopyWithImpl<$Res, RedditListing>;
  @useResult
  $Res call(
      {String? after,
      @JsonKey(name: "children") List<RedditListingItem>? items});
}

/// @nodoc
class _$RedditListingCopyWithImpl<$Res, $Val extends RedditListing>
    implements $RedditListingCopyWith<$Res> {
  _$RedditListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RedditListingItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RedditListingImplCopyWith<$Res>
    implements $RedditListingCopyWith<$Res> {
  factory _$$RedditListingImplCopyWith(
          _$RedditListingImpl value, $Res Function(_$RedditListingImpl) then) =
      __$$RedditListingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? after,
      @JsonKey(name: "children") List<RedditListingItem>? items});
}

/// @nodoc
class __$$RedditListingImplCopyWithImpl<$Res>
    extends _$RedditListingCopyWithImpl<$Res, _$RedditListingImpl>
    implements _$$RedditListingImplCopyWith<$Res> {
  __$$RedditListingImplCopyWithImpl(
      _$RedditListingImpl _value, $Res Function(_$RedditListingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? items = freezed,
  }) {
    return _then(_$RedditListingImpl(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RedditListingItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedditListingImpl
    with DiagnosticableTreeMixin
    implements _RedditListing {
  const _$RedditListingImpl(
      {this.after,
      @JsonKey(name: "children")
      final List<RedditListingItem>? items = const []})
      : _items = items;

  factory _$RedditListingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedditListingImplFromJson(json);

  @override
  final String? after;
  final List<RedditListingItem>? _items;
  @override
  @JsonKey(name: "children")
  List<RedditListingItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedditListing(after: $after, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RedditListing'))
      ..add(DiagnosticsProperty('after', after))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedditListingImpl &&
            (identical(other.after, after) || other.after == after) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, after, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedditListingImplCopyWith<_$RedditListingImpl> get copyWith =>
      __$$RedditListingImplCopyWithImpl<_$RedditListingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedditListingImplToJson(
      this,
    );
  }
}

abstract class _RedditListing implements RedditListing {
  const factory _RedditListing(
          {final String? after,
          @JsonKey(name: "children") final List<RedditListingItem>? items}) =
      _$RedditListingImpl;

  factory _RedditListing.fromJson(Map<String, dynamic> json) =
      _$RedditListingImpl.fromJson;

  @override
  String? get after;
  @override
  @JsonKey(name: "children")
  List<RedditListingItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$RedditListingImplCopyWith<_$RedditListingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RedditListingItem _$RedditListingItemFromJson(Map<String, dynamic> json) {
  return _RedditListingItem.fromJson(json);
}

/// @nodoc
mixin _$RedditListingItem {
  String? get selftext => throw _privateConstructorUsedError;
  String? get permalink => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditListingItemCopyWith<RedditListingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditListingItemCopyWith<$Res> {
  factory $RedditListingItemCopyWith(
          RedditListingItem value, $Res Function(RedditListingItem) then) =
      _$RedditListingItemCopyWithImpl<$Res, RedditListingItem>;
  @useResult
  $Res call({String? selftext, String? permalink, String? title});
}

/// @nodoc
class _$RedditListingItemCopyWithImpl<$Res, $Val extends RedditListingItem>
    implements $RedditListingItemCopyWith<$Res> {
  _$RedditListingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selftext = freezed,
    Object? permalink = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RedditListingItemImplCopyWith<$Res>
    implements $RedditListingItemCopyWith<$Res> {
  factory _$$RedditListingItemImplCopyWith(_$RedditListingItemImpl value,
          $Res Function(_$RedditListingItemImpl) then) =
      __$$RedditListingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? selftext, String? permalink, String? title});
}

/// @nodoc
class __$$RedditListingItemImplCopyWithImpl<$Res>
    extends _$RedditListingItemCopyWithImpl<$Res, _$RedditListingItemImpl>
    implements _$$RedditListingItemImplCopyWith<$Res> {
  __$$RedditListingItemImplCopyWithImpl(_$RedditListingItemImpl _value,
      $Res Function(_$RedditListingItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selftext = freezed,
    Object? permalink = freezed,
    Object? title = freezed,
  }) {
    return _then(_$RedditListingItemImpl(
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedditListingItemImpl
    with DiagnosticableTreeMixin
    implements _RedditListingItem {
  const _$RedditListingItemImpl({this.selftext, this.permalink, this.title});

  factory _$RedditListingItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedditListingItemImplFromJson(json);

  @override
  final String? selftext;
  @override
  final String? permalink;
  @override
  final String? title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedditListingItem(selftext: $selftext, permalink: $permalink, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RedditListingItem'))
      ..add(DiagnosticsProperty('selftext', selftext))
      ..add(DiagnosticsProperty('permalink', permalink))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedditListingItemImpl &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selftext, permalink, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedditListingItemImplCopyWith<_$RedditListingItemImpl> get copyWith =>
      __$$RedditListingItemImplCopyWithImpl<_$RedditListingItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedditListingItemImplToJson(
      this,
    );
  }
}

abstract class _RedditListingItem implements RedditListingItem {
  const factory _RedditListingItem(
      {final String? selftext,
      final String? permalink,
      final String? title}) = _$RedditListingItemImpl;

  factory _RedditListingItem.fromJson(Map<String, dynamic> json) =
      _$RedditListingItemImpl.fromJson;

  @override
  String? get selftext;
  @override
  String? get permalink;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$RedditListingItemImplCopyWith<_$RedditListingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
