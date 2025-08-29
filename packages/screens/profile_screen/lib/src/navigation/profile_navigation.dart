import 'package:flutter/material.dart';
import 'package:profile_screen/src/profile_screen.dart';

const profileRoute = "profile_route";

extension ProfileNavigation on BuildContext {
  void navigateToProfile() {
    Navigator.of(this).pushNamed(profileRoute);
  }
}

Route<dynamic> profileScreen() {
  return MaterialPageRoute(builder: (context) => const ProfileScreen());
}
