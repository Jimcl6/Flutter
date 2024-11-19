import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SizedBox(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset.fromDirection(-5, 0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      )
                    ],
                    border: Border.all(
                      color: Colors.black12,
                      width: 1.0,
                    )),
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/sneakers-logo.png"),
                ),
              ),

              const SizedBox(
                height: 48,
              ),
              // title
              Text(
                'Sneakeroo Shop',
                style: GoogleFonts.italiana(
                    textStyle: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 40,
                        fontWeight: FontWeight.w400)),
              ),

              const SizedBox(
                height: 48,
              ),
              // subtitle
              Text(
                textAlign: TextAlign.center,
                'Sneakers and custom kicks made with premium quality',
                style: GoogleFonts.bodoniModa(
                  fontSize: 20.0,
                ),
              ),

              const SizedBox(
                height: 48,
              ),

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 2.0),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset.fromDirection(0, 1),
                            blurRadius: 10.0,
                            spreadRadius: 1)
                      ]),
                  child: Center(
                    child: Text(
                      'Shop Now!'.toUpperCase(),
                      style: GoogleFonts.bodoniModa(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 5,
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
