import 'package:flutter/material.dart';

class BottomNavigationModel {
  final String route;
  final IconData selectedIcon;
  final IconData unSelectedIcon;
  final String label;

  BottomNavigationModel({
    required this.route,
    required this.selectedIcon,
    required this.unSelectedIcon,
    required this.label,
  });
}
