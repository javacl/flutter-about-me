import 'package:app/model/bottom_navigation_model.dart';
import 'package:app/navigation/main_navigation.dart';
import 'package:app/ui/main_bloc.dart';
import 'package:app/ui/main_event.dart';
import 'package:app/ui/main_state.dart';
import 'package:articles_screen/articles_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_screen/profile_screen.dart';

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

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: PopScope(
            canPop: state.currentIndex != 0,
            child: Navigator(
              key: navigatorKey,
              initialRoute: destinations[state.currentIndex].route,
              onGenerateRoute: onGenerateRoute,
            ),
          ),
          bottomNavigationBar: state.currentIndex == 0
              ? BottomNavigationBar(
                  currentIndex: state.currentIndex,
                  onTap: (index) {
                    final selectedDestination = destinations[index];
                    context.read<MainBloc>().add(MainEvent.tabChanged(index));

                    if (navigatorKey.currentState != null &&
                        navigatorKey.currentState!.canPop()) {
                      navigatorKey.currentState!.popUntil(
                        (route) => route.isFirst,
                      );
                    }

                    navigatorKey.currentState!.pushReplacementNamed(
                      selectedDestination.route,
                    );
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
