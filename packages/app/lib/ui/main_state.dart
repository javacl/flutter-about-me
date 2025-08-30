import 'package:articles_screen/articles_screen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:profile_screen/profile_screen.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required int currentIndex,
    required List<String> routes,
  }) = _MainState;

  factory MainState.initial() =>
      const MainState(currentIndex: 0, routes: [articlesRoute, profileRoute]);
}
