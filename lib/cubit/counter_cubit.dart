import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart'; // تأكد من أن هذه الاستيرادات صحيحة

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAState());

  int teamApoint = 0;
  int teamBpoint = 0;

  void addPoint({required final int buttonNumber, required final String team}) {
    if (team == 'A') {
      teamApoint += buttonNumber;
      emit(CounterTeamAState());
    } else if (team == 'B') {
      teamBpoint += buttonNumber;
      emit(CounterTeamBState());
    }
  }

  void delete() {
    teamApoint = 0;
    teamBpoint = 0;
    emit(CounterTeamAState());
    emit(CounterTeamBState());
  }
}
