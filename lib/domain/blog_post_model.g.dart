// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'blog_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogPostModel _$$_BlogPostModelFromJson(Map<String, dynamic> json) =>
    _$_BlogPostModel(
      userId: json['userId'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
    );

Map<String, dynamic> _$$_BlogPostModelToJson(_$_BlogPostModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
