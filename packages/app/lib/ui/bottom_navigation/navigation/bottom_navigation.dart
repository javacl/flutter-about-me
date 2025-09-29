import 'package:app/ui/bottom_navigation/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

const bottomNavigationRoute = "bottomNavigation_route";

Route<dynamic> bottomNavigationScreen() {
  return MaterialPageRoute(builder: (context) => BottomNavigationScreen());
}
