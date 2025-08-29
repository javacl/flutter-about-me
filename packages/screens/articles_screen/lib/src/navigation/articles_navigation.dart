import 'package:articles_screen/src/articles_screen.dart';
import 'package:flutter/material.dart';

const articlesRoute = "articles_route";

void navigateToArticles(BuildContext context) {
  Navigator.pushNamed(context, articlesRoute);
}

Route<dynamic> articlesScreen({
  void Function(BuildContext, int)? onArticleClick,
}) {
  return MaterialPageRoute(
    builder: (context) => ArticlesScreen(onArticleClick: onArticleClick),
  );
}
