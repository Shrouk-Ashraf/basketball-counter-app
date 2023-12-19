part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAIncrement extends CounterState {
  final int teamAScore;

  CounterAIncrement({required this.teamAScore});
}

class CounterBIncrement extends CounterState {
  final int teamBScore;

  CounterBIncrement({required this.teamBScore});
}

class CounterClear extends CounterState {}
