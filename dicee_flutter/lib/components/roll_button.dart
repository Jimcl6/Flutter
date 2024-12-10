// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnRoll extends StatelessWidget {
  String text;
  void Function() onTap;
  BtnRoll({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
