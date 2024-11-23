import 'package:flutter/material.dart';
import 'package:magic8_ball/magic_ball.dart';

class GradientContainer extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;

  const GradientContainer(this.colorOne, this.colorTwo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: [colorOne, colorTwo])),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [MagicBall()],
      ),
    );
  }
}
