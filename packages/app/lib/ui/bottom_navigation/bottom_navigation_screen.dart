import 'package:app/model/bottom_navigation_model.dart';
import 'package:app/navigation/navigation.dart';
import 'package:app/ui/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:app/ui/bottom_navigation/bottom_navigation_event.dart';
import 'package:app/ui/bottom_navigation/bottom_navigation_state.dart';
import 'package:articles_screen/articles_screen_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_screen/profile_screen_imports.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});

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
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: const Navigator(
            initialRoute: articlesRoute,
            onGenerateRoute: onGenerateRoute,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (index) {
              final destination = destinations[index];
              context.read<BottomNavigationBloc>().add(
                BottomNavigationEvent.tabChanged(index),
              );
              switch (destination.route) {
                case articlesRoute:
                  navigateToArticles(context);
                  break;
                case profileRoute:
                  navigateToProfile(context);
                  break;
              }
            },
            items: destinations
                .map(
                  (item) => BottomNavigationBarItem(
                    icon: Icon(item.unSelectedIcon),
                    activeIcon: Icon(item.selectedIcon),
                    label: item.label,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
