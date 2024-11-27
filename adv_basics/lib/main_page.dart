import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade700,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                scale: 2,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Learn flutter the fun way!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 25,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      side: const WidgetStatePropertyAll(BorderSide(
                        color: Colors.white,
                        width: 2,
                      )),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      foregroundColor:
                          const WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      'Start Quiz',
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
