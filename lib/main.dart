import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else if (state is CounterBIncrementState) {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
        if (state is CounterIncrementResetState) {
          teamAPoints = 0;
          teamBPoints = 0;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          children: [
                            const Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$teamAPoints',
                              style: const TextStyle(
                                  fontSize: 140, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    minimumSize: const Size(140, 60),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamIncrement(
                                            team: 'A', buttonNumber: 1);
                                  },
                                  child: const Text(
                                    'Add 1 Point',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    minimumSize: const Size(140, 60),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamIncrement(
                                            team: 'A', buttonNumber: 2);
                                  },
                                  child: const Text(
                                    'Add 2 Point',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    minimumSize: const Size(140, 60),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamIncrement(
                                            team: 'A', buttonNumber: 3);
                                  },
                                  child: const Text(
                                    'Add 3 Point',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            )
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          children: [
                            const Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$teamBPoints',
                              style: const TextStyle(
                                  fontSize: 140, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    minimumSize: const Size(140, 60),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamIncrement(
                                            team: 'B', buttonNumber: 1);
                                  },
                                  child: const Text(
                                    'Add 1 Point',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    minimumSize: const Size(140, 60),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamIncrement(
                                            team: 'B', buttonNumber: 2);
                                  },
                                  child: const Text(
                                    'Add 2 Point',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    minimumSize: const Size(140, 60),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamIncrement(
                                            team: 'B', buttonNumber: 3);
                                  },
                                  child: const Text(
                                    'Add 3 Point',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        minimumSize: const Size(140, 60),
                        backgroundColor: Colors.greenAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).incrementReset();
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.black),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
