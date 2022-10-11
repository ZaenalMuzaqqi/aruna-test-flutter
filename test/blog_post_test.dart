import 'package:aruna_test/presentation/manager/blog_post/blog_post_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Blog Post Test', () {
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
