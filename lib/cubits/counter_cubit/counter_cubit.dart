import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAScore = 0;
  int teamBScore = 0;
  teamAIncrement({required int buttonNumber}) {
    teamAScore += buttonNumber;
    emit(CounterAIncrement(teamAScore: teamAScore));
  }

  teamBIncrement({required int buttonNumber}) {
    teamBScore += buttonNumber;
    emit(CounterBIncrement(teamBScore: teamBScore));
  }

  clear() {
    teamAScore = 0;
    teamBScore = 0;
    emit(CounterClear());
  }
}
