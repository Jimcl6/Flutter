// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnChoice2 extends StatelessWidget {
  String choiceText;
  final Function()? onTap;
  BtnChoice2({super.key, required this.choiceText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 74, 0, 172),
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(-1, -1),
                blurRadius: 3,
                spreadRadius: 0,
              ),
              BoxShadow(
                  color: Color.fromARGB(255, 65, 0, 150),
                  offset: Offset(2, 2),
                  blurRadius: 3,
                  spreadRadius: 2)
            ]),
        child: Center(
          child: Text(
            choiceText,
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
              textStyle: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
