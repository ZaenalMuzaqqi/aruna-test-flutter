import 'package:aruna_test/domain/blog_post_model.dart';
import 'package:flutter/material.dart';
import '../presentation/page/detail_page.dart';
import '../presentation/page/main_page.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const MainPage());
      case '/detail-page':
        var data = settings.arguments as BlogPostModel;
        return _materialRoute(DetailPage(blogPostModel: data));
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
