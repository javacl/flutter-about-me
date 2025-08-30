import 'package:app/di/injection.dart';
import 'package:app/ui/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MainScreen());
}
