import 'package:flutter/material.dart';
import 'package:xylophone_flutter/components/note.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AudioPlayerBtn(noteNumber: 1, color: Colors.red),
                AudioPlayerBtn(noteNumber: 2, color: Colors.orange),
                AudioPlayerBtn(noteNumber: 3, color: Colors.yellow),
                AudioPlayerBtn(noteNumber: 4, color: Colors.green),
                AudioPlayerBtn(noteNumber: 5, color: Colors.green.shade800),
                AudioPlayerBtn(noteNumber: 6, color: Colors.blue),
                AudioPlayerBtn(noteNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
