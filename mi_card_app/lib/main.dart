import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        body: SafeArea(
            child: Center(
          child: Card(
            color: const Color.fromARGB(255, 43, 43, 43),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/C4D03AQFmhBaNrxgh3Q/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1517604351326?e=1736985600&v=beta&t=Z4IJnWt8vzlp1uOYr8fWPtUJBYVGEs9URnI3D9EC4oE'),
                ),
                Text(
                  'J.I.M.C.L'.toUpperCase(),
                  style: GoogleFonts.exo2(
                      color: Colors.white, fontSize: 35.0, letterSpacing: 10.0),
                ),
                Text(
                  'Flutter Developer'.toUpperCase(),
                  style: GoogleFonts.nunito(
                      color: Colors.white, fontSize: 20.0, letterSpacing: 5.0),
                ),
                const SizedBox(
                  width: 250,
                  child: Divider(
                    thickness: 1.0,
                    color: Color.fromARGB(124, 255, 255, 255),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.local_phone,
                          size: 40.0,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '+639761237072',
                          style: GoogleFonts.nunito(fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20),
                  // color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.mail,
                          size: 40.0,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'jedllorente@gmail.com',
                          style: GoogleFonts.nunito(fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
