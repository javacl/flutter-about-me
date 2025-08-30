import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/ui/main_event.dart';
import 'package:app/ui/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<MainEvent>((event, emit) {
      event.map(
        tabChanged: (e) {
          emit(state.copyWith(currentIndex: e.index));
        },
      );
    });
  }
}
