import 'package:app/ui/bottom_navigation/bottom_navigation_event.dart';
import 'package:app/ui/bottom_navigation/bottom_navigation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationState.initial()) {
    on<BottomNavigationEvent>((event, emit) {
      event.map(
        tabChanged: (e) {
          emit(state.copyWith(currentIndex: e.index));
        },
      );
    });
  }
}
