import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:basketball_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homeview extends StatelessWidget {
  Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'points Counter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamApoint}',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .addPoint(buttonNumber: 1, team: 'A');
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .addPoint(buttonNumber: 2, team: 'A');
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .addPoint(buttonNumber: 3, team: 'A');
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamBpoint}',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .addPoint(buttonNumber: 1, team: 'B');
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .addPoint(buttonNumber: 2, team: 'B');
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .addPoint(buttonNumber: 3, team: 'B');
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).delete();
              },
              child: const Text(
                'Reseat',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            )
          ],
        ),
      );
    }, listener: (context, state) {
      if (state is CounterTeamAState) {}
    });
  }
}
