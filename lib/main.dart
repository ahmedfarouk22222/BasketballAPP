import 'package:flutter/material.dart';

void main() {
  runApp(Basketballapp());
}

class Basketballapp extends StatefulWidget {
  @override
  State<Basketballapp> createState() => _BasketballappState();
}

class _BasketballappState extends State<Basketballapp> {
  int pointteamA = 0;

  int pointteamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      '$pointteamA',
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
                        setState(() {
                          pointteamA++;
                          print(pointteamA);
                        });
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
                        setState(() {
                          pointteamA += 2;
                          print(pointteamA);
                        });
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
                        setState(() {
                          pointteamA += 3;
                          print(pointteamA);
                        });
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
                      '$pointteamB',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointteamB++;
                          print(pointteamB);
                        });
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
                        setState(() {
                          pointteamB += 2;
                          print(pointteamB);
                        });
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
                        setState(() {
                          pointteamB += 3;
                          print(pointteamB);
                        });
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
                setState(() {
                  pointteamA = 0;
                  pointteamB = 0;
                });
                pointteamA = 0;
                pointteamB = 0;
              },
              child: const Text(
                'Reseat',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
