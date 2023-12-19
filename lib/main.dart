import 'package:basketball_points_counter_app/basketball_counter_screen.dart';
import 'package:basketball_points_counter_app/cubits/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BasketballCounterApp(),
  );
}

class BasketballCounterApp extends StatelessWidget {
  const BasketballCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BasketballCounterScreen(),
      ),
    );
  }
}
