import 'package:articles_screen/articles_screen.dart';
import 'package:article_screen/article_screen.dart';
import 'package:profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case articlesRoute:
      return articlesScreen(
        onArticleClick: (context, id) {
          navigateToArticle(context, id);
        },
      );

    case articleRoute:
      return articleScreen(settings);

    case profileRoute:
      return profileScreen();

    default:
      return null;
  }
}
