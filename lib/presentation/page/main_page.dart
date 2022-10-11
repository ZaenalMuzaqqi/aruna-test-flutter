import 'package:aruna_test/presentation/manager/blog_post/blog_post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => BlogPostCubit()..getListBlogPost(),
        child: BlocBuilder<BlogPostCubit, BlogPostState>(
          builder: (context, state) {
            return SafeArea(
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.indigo,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        context.read<BlogPostCubit>().searchBlogPost(value);
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.16),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Cari...'),
                    ),
                    Expanded(
                      child: state.maybeMap(
                        orElse: () => Container(),
                        loading: (value) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        },
                        success: (value) {
                          return ListView.builder(
                            itemCount: value.blogPostList.length,
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/detail-page',
                                      arguments: value.blogPostList[index]);
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  padding: const EdgeInsets.all(16),
                                  color: Colors.amber,
                                  child: Text(
                                    value.blogPostList[index].title,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
