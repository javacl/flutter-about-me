import 'package:app/di/injection.dart';
import 'package:app/model/bottom_navigation_model.dart';
import 'package:app/navigation/main_navigation.dart';
import 'package:app/ui/main_bloc.dart';
import 'package:app/ui/main_state.dart';
import 'package:articles_screen/articles_screen_imports.dart';
import 'package:design_system/theme/theme.dart';
import 'package:design_system/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_screen/profile_screen_imports.dart';

void main() {
  configureDependencies();
  runApp(Application());
}

class Application extends StatelessWidget {
  Application({super.key});

  final List<BottomNavigationModel> destinations = [
    BottomNavigationModel(
      route: articlesRoute,
      selectedIcon: Icons.article,
      unSelectedIcon: Icons.article_outlined,
      label: 'Articles',
    ),
    BottomNavigationModel(
      route: profileRoute,
      selectedIcon: Icons.person,
      unSelectedIcon: Icons.person_outline,
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
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
            onGenerateRoute: onGenerateRoute
          );
        },
      ),
    );
  }
}
