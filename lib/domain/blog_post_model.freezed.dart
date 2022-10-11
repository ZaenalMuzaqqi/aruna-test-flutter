// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blog_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogPostModel _$BlogPostModelFromJson(Map<String, dynamic> json) {
  return _BlogPostModel.fromJson(json);
}

/// @nodoc
mixin _$BlogPostModel {
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogPostModelCopyWith<BlogPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogPostModelCopyWith<$Res> {
  factory $BlogPostModelCopyWith(
          BlogPostModel value, $Res Function(BlogPostModel) then) =
      _$BlogPostModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class _$BlogPostModelCopyWithImpl<$Res>
    implements $BlogPostModelCopyWith<$Res> {
  _$BlogPostModelCopyWithImpl(this._value, this._then);

  final BlogPostModel _value;
  // ignore: unused_field
  final $Res Function(BlogPostModel) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BlogPostModelCopyWith<$Res>
    implements $BlogPostModelCopyWith<$Res> {
  factory _$$_BlogPostModelCopyWith(
          _$_BlogPostModel value, $Res Function(_$_BlogPostModel) then) =
      __$$_BlogPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class __$$_BlogPostModelCopyWithImpl<$Res>
    extends _$BlogPostModelCopyWithImpl<$Res>
    implements _$$_BlogPostModelCopyWith<$Res> {
  __$$_BlogPostModelCopyWithImpl(
      _$_BlogPostModel _value, $Res Function(_$_BlogPostModel) _then)
      : super(_value, (v) => _then(v as _$_BlogPostModel));

  @override
  _$_BlogPostModel get _value => super._value as _$_BlogPostModel;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_BlogPostModel(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlogPostModel implements _BlogPostModel {
  _$_BlogPostModel(
      {@JsonKey(name: 'userId') this.userId = 0,
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'body') this.body = ''});

  factory _$_BlogPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_BlogPostModelFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;

  @override
  String toString() {
    return 'BlogPostModel(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogPostModel &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_BlogPostModelCopyWith<_$_BlogPostModel> get copyWith =>
      __$$_BlogPostModelCopyWithImpl<_$_BlogPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogPostModelToJson(
      this,
    );
  }
}

abstract class _BlogPostModel implements BlogPostModel {
  factory _BlogPostModel(
      {@JsonKey(name: 'userId') final int userId,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'body') final String body}) = _$_BlogPostModel;

  factory _BlogPostModel.fromJson(Map<String, dynamic> json) =
      _$_BlogPostModel.fromJson;

  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_BlogPostModelCopyWith<_$_BlogPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
