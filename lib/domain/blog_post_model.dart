// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_post_model.freezed.dart';
part 'blog_post_model.g.dart';

@freezed
class BlogPostModel with _$BlogPostModel {
  factory BlogPostModel({
    @Default(0) @JsonKey(name: 'userId') int userId,
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'title') String title,
    @Default('') @JsonKey(name: 'body') String body,
  }) = _BlogPostModel;

  factory BlogPostModel.fromJson(Map<String, dynamic> json) =>
      _$BlogPostModelFromJson(json);
}
