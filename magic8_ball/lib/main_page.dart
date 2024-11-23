import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic8_ball/gradient_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          title: Text(
            'Magic 8 Ball'.toUpperCase(),
            style: GoogleFonts.bodoniModa(
                textStyle: const TextStyle(
                    fontSize: 20, color: Colors.white, letterSpacing: 5)),
          ),
        ),
        body: GradientContainer(
          Colors.deepPurple.shade900,
          Colors.deepPurple.shade700,
        ),
      ),
    );
  }
}
