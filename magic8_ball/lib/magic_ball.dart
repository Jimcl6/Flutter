import 'package:flutter/material.dart';
import 'dart:math';

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var imageLink = 'assets/images/ball1.png';

  void shakeBall() {
    // code here...
    var randomNum = Random().nextInt(5) + 1;

    setState(() {
      imageLink = 'assets/images/ball$randomNum.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: GestureDetector(
        onTap: shakeBall,
        child: Expanded(
          child: Image.asset(imageLink),
        ),
      ),
    );
  }
}
