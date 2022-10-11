part of 'blog_post_cubit.dart';

@freezed
class BlogPostState with _$BlogPostState {
  const factory BlogPostState.initial() = _Initial;
  const factory BlogPostState.loading() = _Loading;
  const factory BlogPostState.failure(String failureMsg) = _Failure;
  const factory BlogPostState.success(List<BlogPostModel> blogPostList) =
      _Success;
}
