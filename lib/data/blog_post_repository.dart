import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../domain/blog_post_model.dart';

class BlogPostRepository {
  static const String _url = "https://jsonplaceholder.typicode.com/posts";
  final Dio _dio = Dio(
    BaseOptions(
      headers: {
        'Content-type': "application/json",
        'title': 'judul',
        'Body': 'content of blog post',
      },
    ),
  );

  Future<Either<String, List<BlogPostModel>>> getBlogPost() async {
    try {
      Response response = await _dio.get(_url);
      List<dynamic> blogPostData = response.data;
      var result = blogPostData.map((e) => BlogPostModel.fromJson(e)).toList();
      return right(result);
    } on DioError catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, List<BlogPostModel>>> searchBlogPost(
      String keyword) async {
    List<BlogPostModel> listKeywordBlogPost = [];
    try {
      Response response = await _dio.get(_url);
      List<dynamic> blogPostData = response.data;
      var listPosts =
          blogPostData.map((e) => BlogPostModel.fromJson(e)).toList();
      listKeywordBlogPost = listPosts
          .where((x) => x.title.toLowerCase().contains(keyword.toLowerCase()))
          .toList();

      return right(listKeywordBlogPost);
    } on DioError catch (e) {
      return left(e.toString());
    }
  }
}

BlogPostRepository blogPostRepository = BlogPostRepository();
