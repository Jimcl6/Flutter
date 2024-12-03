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
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 10,
                          offset: const Offset(-1, 5))
                    ]),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/C4D03AQFmhBaNrxgh3Q/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1517604351326?e=1736985600&v=beta&t=Z4IJnWt8vzlp1uOYr8fWPtUJBYVGEs9URnI3D9EC4oE'),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'J.I.M.C.L'.toUpperCase(),
                style: GoogleFonts.exo2(
                    color: Colors.grey.shade600,
                    fontSize: 35.0,
                    letterSpacing: 10.0),
              ),
              Text(
                'Flutter Developer'.toUpperCase(),
                style: GoogleFonts.nunito(
                    color: Colors.grey.shade600,
                    fontSize: 20.0,
                    letterSpacing: 5.0),
              ),
              SizedBox(
                width: 250,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey.shade400,
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                      ),
                      title: Text(
                        '+639761237072',
                        style: GoogleFonts.nunito(color: Colors.black),
                      ),
                    )),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                // color: Colors.white,
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ListTile(
                      leading: const Icon(Icons.mail),
                      title: Text(
                        'jedllorente@gmail.com',
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(color: Colors.black)),
                      ),
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
