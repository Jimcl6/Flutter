import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // need text editing controller to access what the user typed.

  TextEditingController myController = TextEditingController();

  // greeting message variable
  String greetingMessage = "";

  void greetUser() {
    var controllerText = myController.text;
    setState(() {
      greetingMessage = "Hello $controllerText";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Full name:'),
            ),
            ElevatedButton(onPressed: greetUser, child: const Text('tap'))
          ],
        ),
      )),
    );
  }
}
