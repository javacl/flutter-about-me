import 'package:app/navigation/main_navigation.dart';
import 'package:app/ui/main_bloc.dart';
import 'package:app/ui/main_event.dart';
import 'package:app/ui/main_state.dart';
import 'package:articles_screen/articles_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: Navigator(
            key: GlobalKey<NavigatorState>(),
            onGenerateRoute: onGenerateRoute,
            initialRoute: articlesRoute,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (index) {
              context.read<MainBloc>().add(MainEvent.tabChanged(index));
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: 'Articles',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
