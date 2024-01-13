import 'dart:math';

import 'package:flutter/material.dart';
import 'package:happy_birthday/tipCalculator.dart';

class DiceRollerApp extends StatefulWidget {
  const DiceRollerApp({super.key});

  @override
  State<DiceRollerApp> createState() => _DiceRollerAppState();
}

class _DiceRollerAppState extends State<DiceRollerApp> {

  final dice1 = "assets/images/dice_1.png";
  final dice2 = "assets/images/dice_2.png";
  final dice3 = "assets/images/dice_3.png";
  final dice4 = "assets/images/dice_4.png";
  final dice5 = "assets/images/dice_5.png";
  final dice6 = "assets/images/dice_6.png";

  int result = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image(image: AssetImage("assets/images/dice_$result.png")),
            ElevatedButton(onPressed: () {
              setState(() {
                result = Random().nextInt(6)+1;
              });
            },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),
                child: const Text("Roll",
                style: TextStyle(
                  color: Colors.white
                ),)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (
                          BuildContext context) => const TipCalculator()));
                },
                style: const ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.black)),
                child: const Text(
                  "NEXT",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
