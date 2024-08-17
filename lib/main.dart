import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      padding: const EdgeInsets.all(8.0),
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
                            style:
                                TextStyle(fontSize: 140, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  minimumSize: Size(140, 60),
                                  backgroundColor: Colors.greenAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    teamAPoints++;
                                  });
                                  ;
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
                                      borderRadius: BorderRadius.circular(8.0)),
                                  minimumSize: Size(140, 60),
                                  backgroundColor: Colors.greenAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    teamAPoints += 2;
                                  });
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
                                      borderRadius: BorderRadius.circular(8.0)),
                                  minimumSize: Size(140, 60),
                                  backgroundColor: Colors.greenAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    teamAPoints += 3;
                                  });
                                },
                                child: const Text(
                                  'Add 3 Point',
                                  style: TextStyle(color: Colors.black),
                                )),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.white,
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                            style:
                                TextStyle(fontSize: 140, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  minimumSize: Size(140, 60),
                                  backgroundColor: Colors.greenAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    teamBPoints++;
                                  });
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
                                      borderRadius: BorderRadius.circular(8.0)),
                                  minimumSize: Size(140, 60),
                                  backgroundColor: Colors.greenAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    teamBPoints += 2;
                                  });
                                  ;
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
                                      borderRadius: BorderRadius.circular(8.0)),
                                  minimumSize: Size(140, 60),
                                  backgroundColor: Colors.greenAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    teamBPoints += 3;
                                  });
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
                      minimumSize: Size(140, 60),
                      backgroundColor: Colors.greenAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints = 0;
                        teamBPoints = 0;
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
