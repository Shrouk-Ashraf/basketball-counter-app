// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:basketball_points_counter_app/cubits/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballCounterScreen extends StatelessWidget {
  BasketballCounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Basketball Counter App"),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 45,
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 200,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                                "${BlocProvider.of<CounterCubit>(context).teamAScore}",
                                style: TextStyle(fontSize: 150)),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(buttonNumber: 1);
                          },
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(buttonNumber: 2);
                          },
                          child: Text(
                            "Add 2 points",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(buttonNumber: 3);
                          },
                          child: Text(
                            "Add 3 points",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 30,
                        endIndent: 2,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(
                            fontSize: 45,
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 200,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                                "${BlocProvider.of<CounterCubit>(context).teamBScore}",
                                style: TextStyle(fontSize: 150)),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamBIncrement(buttonNumber: 1);
                          },
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamBIncrement(buttonNumber: 2);
                          },
                          child: Text(
                            "Add 2 points",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamBIncrement(buttonNumber: 3);
                          },
                          child: Text(
                            "Add 3 points",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).clearScore();
                },
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
