import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<
    DiceRoller> //it is a private class.it can only used by classes inside this file
{
  var currentDiceRoll = 2;

  void rollDice() {
    // value between 1-6
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assests/images/dice-$currentDiceRoll.png",
        scale: 3,
      ),
      const SizedBox(
        height: 30,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: const Color.fromARGB(239, 255, 255, 255),
            textStyle: const TextStyle(fontSize: 28)),
        child: const Text('Roll Dice'),
      ),
    ]);
  }
}
