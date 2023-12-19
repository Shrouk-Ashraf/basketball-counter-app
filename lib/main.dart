import 'package:basketball_points_counter_app/basketball_counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BasketballCounterApp(),
  );
}

class BasketballCounterApp extends StatelessWidget {
  const BasketballCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballCounterScreen(),
    );
  }
}
