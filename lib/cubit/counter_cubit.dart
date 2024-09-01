import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamIncrement({required String team, required int buttonNumber}) {
    switch (team) {
      case 'A':
        teamAPoints += buttonNumber;
        emit(CounterAIncrementState());
        break;
      case 'B':
        teamBPoints += buttonNumber;
        emit(CounterBIncrementState());
        break;
    }
  }

  void incrementReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterIncrementResetState());
  }
}
