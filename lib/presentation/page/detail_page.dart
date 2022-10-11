import 'package:aruna_test/domain/blog_post_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    this.blogPostModel,
  }) : super(key: key);

  final BlogPostModel? blogPostModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.indigo,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            width: double.infinity,
            child: Text(
              blogPostModel!.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Text(
              blogPostModel!.body,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
