import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImageOne = 'assets/images/dice-1.png';
  var diceImageTwo = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRollOne = Random().nextInt(6) + 1;
    var diceRollTwo = Random().nextInt(6) + 1;
    // code here...
    setState(() {
      diceImageOne = 'assets/images/dice-$diceRollOne.png';
      diceImageTwo = 'assets/images/dice-$diceRollTwo.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
                child: Image.asset(
              diceImageOne,
              width: 200,
            )),
            Expanded(
                child: Image.asset(
              diceImageTwo,
              width: 200,
            )),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
            style: TextButton.styleFrom(
                textStyle: GoogleFonts.nunito(letterSpacing: 5, fontSize: 28),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                side: const BorderSide(color: Colors.white, width: 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: rollDice,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'Roll dice'.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            )),
      ],
    );
  }
}
