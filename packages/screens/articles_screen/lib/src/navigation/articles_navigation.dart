import 'package:articles_screen/src/articles_screen.dart';
import 'package:flutter/material.dart';

const articlesRoute = "articles_route";

extension ArticlesNavigation on BuildContext {
  void navigateToArticles() {
    Navigator.of(this).pushNamed(articlesRoute);
  }
}

Route<dynamic> articlesScreen({void Function(int)? onArticleClick}) {
  return MaterialPageRoute(
    builder: (context) => ArticlesScreen(onArticleClick: onArticleClick),
  );
}
