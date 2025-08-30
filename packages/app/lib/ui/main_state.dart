import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    required int currentIndex
  }) = _MainState;

  factory MainState.initial() =>
      const MainState(currentIndex: 0);
}
