import 'package:aruna_test/data/blog_post_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/blog_post_model.dart';

part 'blog_post_state.dart';
part 'blog_post_cubit.freezed.dart';

class BlogPostCubit extends Cubit<BlogPostState> {
  BlogPostCubit() : super(const BlogPostState.initial());

  void getListBlogPost() async {
    emit(const BlogPostState.loading());
    final result = await blogPostRepository.getBlogPost();
    result.fold(
      (l) => emit(BlogPostState.failure(l)),
      (r) => emit(BlogPostState.success(r)),
    );
  }

  void searchBlogPost(String keyword) async {
    emit(const BlogPostState.loading());
    final result = await blogPostRepository.searchBlogPost(keyword);
    result.fold(
      (l) => emit(BlogPostState.failure(l)),
      (r) => emit(BlogPostState.success(r)),
    );
  }
}
