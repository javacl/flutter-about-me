import 'package:article_screen/src/article_screen.dart';
import 'package:flutter/material.dart';

const articleRoute = "article_route";

extension ArticleNavigation on BuildContext {
  void navigateToArticle(int id) {
    Navigator.of(this).pushNamed(articleRoute, arguments: ArticleArgs(id));
  }
}

Route<dynamic> articleScreen(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      final args = settings.arguments as ArticleArgs;
      return ArticleScreen(args: args);
    },
  );
}

class ArticleArgs {
  final int id;

  ArticleArgs(this.id);
}
