import 'package:app/ui/bottom_navigation/navigation/bottom_navigation.dart';
import 'package:article_screen/article_screen_imports.dart';
import 'package:articles_screen/articles_screen_imports.dart';
import 'package:flutter/cupertino.dart';
import 'package:profile_screen/profile_screen_imports.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case bottomNavigationRoute:
      return bottomNavigationScreen();

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
