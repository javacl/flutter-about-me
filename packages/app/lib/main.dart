import 'package:app/di/injection.dart';
import 'package:design_system/theme/theme.dart';
import 'package:design_system/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:home_screen/home_screen.dart';

void main() {
  configureDependencies();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
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
      home: const HomeScreen(),
    );
  }
}
