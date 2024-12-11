import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onTap;
  final String child;

  const AnswerButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.deepPurple.shade800,
              boxShadow: const [
                BoxShadow(
                  color: Colors.white38,
                  offset: Offset(
                    0,
                    0,
                  ),
                  blurRadius: 7,
                  spreadRadius: 0.5,
                ),
                BoxShadow(
                    color: Color.fromARGB(255, 56, 1, 91),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10,
                    spreadRadius: 1)
              ],
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              child,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoFlex(
                  textStyle: const TextStyle(
                color: Colors.white,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
