import 'package:article_screen/src/article_screen.dart';
import 'package:flutter/material.dart';

const articleRoute = "article_route";

void navigateToArticle(BuildContext context, int id) {
  Navigator.pushNamed(context, articleRoute, arguments: ArticleArgs(id));
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
