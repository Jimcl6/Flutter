import 'package:dicee_flutter/components/roll_button.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceView extends StatefulWidget {
  const DiceView({super.key});

  @override
  State<DiceView> createState() => _DiceViewState();
}

class _DiceViewState extends State<DiceView> {
  var diceImageOne = 'assets/images/dice-1.png';
  var diceImageTwo = 'assets/images/dice-2.png';

  void diceRoll() {
    var diceIntOne = Random().nextInt(6) + 1;
    var diceIntTwo = Random().nextInt(6) + 1;

    setState(() {
      diceImageOne = 'assets/images/dice-$diceIntOne.png';
      diceImageTwo = 'assets/images/dice-$diceIntTwo.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(
                image: AssetImage(diceImageOne),
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage(diceImageTwo),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        BtnRoll(onTap: diceRoll, text: 'Roll Dice')
      ],
    );
  }
}
