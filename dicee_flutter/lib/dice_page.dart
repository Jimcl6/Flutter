import 'package:dicee_flutter/views/dice_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text(
          'Dicee'.toUpperCase(),
          style: GoogleFonts.nunitoSans(color: Colors.white, letterSpacing: 3),
        ),
        backgroundColor: Colors.red,
      ),
      body: const Center(child: DiceView()),
    );
  }
}
