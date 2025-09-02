import 'package:app/model/bottom_navigation_model.dart';
import 'package:app/navigation/navigation.dart';
import 'package:app/ui/main_bloc.dart';
import 'package:app/ui/main_event.dart';
import 'package:app/ui/main_state.dart';
import 'package:articles_screen/articles_screen_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_screen/profile_screen_imports.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

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
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: const Navigator(
            initialRoute: articlesRoute,
            onGenerateRoute: onGenerateRoute,
          ),
          bottomNavigationBar: state.currentIndex == 0
              ? BottomNavigationBar(
                  currentIndex: state.currentIndex,
                  onTap: (index) {
                    final destination = destinations[index];
                    context.read<MainBloc>().add(MainEvent.tabChanged(index));
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
                )
              : null,
        );
      },
    );
  }
}
