import 'package:flutter/material.dart';
import 'package:profile_screen/src/profile_screen.dart';

const profileRoute = "profile_route";

void navigateToProfile(BuildContext context) {
  Navigator.pushNamed(context, profileRoute);
}

Route<dynamic> profileScreen() {
  return MaterialPageRoute(builder: (context) => const ProfileScreen());
}
