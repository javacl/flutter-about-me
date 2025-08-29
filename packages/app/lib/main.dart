import 'package:app/di/injection.dart';
import 'package:articles_screen/articles_screen.dart';
import 'package:article_screen/article_screen.dart';
import 'package:profile_screen/profile_screen.dart';
import 'package:design_system/theme/theme.dart';
import 'package:design_system/theme/typography.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        textTheme: textTheme,
        appBarTheme: lightAppBarTheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: textTheme,
        appBarTheme: darkAppBarTheme,
        useMaterial3: true,
      ),
      initialRoute: articlesRoute,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case articlesRoute:
            return articlesScreen(
              onArticleClick: (id) {
                context.navigateToArticle(id);
              },
            );
          case articleRoute:
            return articleScreen(settings);
          case profileRoute:
            return profileScreen();
          default:
            return null;
        }
      },
    );
  }
}
