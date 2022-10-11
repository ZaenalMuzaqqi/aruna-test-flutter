import 'package:aruna_test/data/blog_post_repository.dart';
import 'package:aruna_test/domain/blog_post_model.dart';
import 'package:aruna_test/presentation/manager/blog_post/blog_post_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Blog Post Test', () {
    late BlogPostCubit blogPostCubit;
    List<BlogPostModel> blogPostModel;

    setUp(() async {
      blogPostCubit = BlogPostCubit();
      final result = await blogPostRepository.getBlogPost();
      result.fold(
        (l) => null,
        (r) => blogPostModel = r,
      );
    });

    test('initial test', () {
      expect(blogPostCubit.state, const BlogPostState.initial());
    });

    test('Get Data', () async {
      final result = await blogPostRepository.getBlogPost();
      result.fold(
        (l) => null,
        (r) => blogPostModel = r,
      );
    });

    test('Get Data Keyword', () async {
      final result = await blogPostRepository.searchBlogPost('');
      result.fold(
        (l) => null,
        (r) => blogPostModel = r,
      );
    });

    blocTest<BlogPostCubit, BlogPostState>(
      'BlogPostSuccess',
      build: () => blogPostCubit,
      act: (bloc) => bloc.getListBlogPost(),
      expect: () => <BlogPostState>[BlogPostState.success([])],
    );

    blocTest<BlogPostCubit, BlogPostState>(
      'BlogPostSuccess',
      build: () => blogPostCubit,
      act: (bloc) => bloc.searchBlogPost(''),
      expect: () => <BlogPostState>[const BlogPostState.success([])],
    );
    blocTest(
      'initial value',
      build: () => BlogPostCubit(),
      act: (BlogPostCubit bloc) {
        bloc.getListBlogPost();
      },
      expect: () => [
        const BlogPostState.loading(),
      ],
    );
  });
}
