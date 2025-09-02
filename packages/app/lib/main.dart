import 'package:app/di/injection.dart';
import 'package:app/navigation/navigation.dart';
import 'package:app/ui/main_bloc.dart';
import 'package:app/ui/main_state.dart';
import 'package:articles_screen/articles_screen_imports.dart';
import 'package:design_system/theme/theme.dart';
import 'package:design_system/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureDependencies();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

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
            onGenerateRoute: onGenerateRoute,
          );
        },
      ),
    );
  }
}
