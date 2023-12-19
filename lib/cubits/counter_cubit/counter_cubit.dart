import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAScore = 0;
  int teamBScore = 0;
  teamAIncrement({required int buttonNumber}) {
    teamAScore += buttonNumber;
    emit(CounterAIncrement());
  }

  teamBIncrement({required int buttonNumber}) {
    teamBScore += buttonNumber;
    emit(CounterBIncrement());
  }

  clear() {
    teamAScore = 0;
    teamBScore = 0;
    emit(CounterClear());
  }
}
