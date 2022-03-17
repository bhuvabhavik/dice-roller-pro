import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDice = 1;

  var rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Dice Roller Pro"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDice = Random().nextInt(6) + 1;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        leftDice = 6;
                      });
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDice = Random().nextInt(6) + 1;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        rightDice = 6;
                      });
                    },
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
