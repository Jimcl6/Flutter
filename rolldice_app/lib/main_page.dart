import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rolldice_app/gradient_container.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade900,
          title: Text(
            'Roll Dice App',
            style: GoogleFonts.pacifico(
                textStyle: const TextStyle(color: Colors.white)),
          ),
        ),
        body: GradientContainer(
            colorOne: const Color.fromARGB(255, 32, 17, 97),
            colorTwo: Colors.deepPurple.shade800),
      ),
    );
  }
}
