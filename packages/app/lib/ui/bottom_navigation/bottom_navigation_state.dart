import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_state.freezed.dart';

@freezed
abstract class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({required int currentIndex}) =
      _BottomNavigationState;

  factory BottomNavigationState.initial() =>
      const BottomNavigationState(currentIndex: 0);
}
