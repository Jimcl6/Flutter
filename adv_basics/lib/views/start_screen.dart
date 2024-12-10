import 'package:adv_basics/components/btn_start.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              scale: 2.5,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Learn flutter \n the fun way!',
            textAlign: TextAlign.center,
            style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 30, letterSpacing: 3)),
          ),
          const SizedBox(
            height: 25,
          ),
          BtnStart(title: 'Start Quiz', onTap: () {}),
        ],
      ),
    );
  }
}
