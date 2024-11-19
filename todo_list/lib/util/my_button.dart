import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // variables
  final String text;
  VoidCallback onPressed;

  // constructors
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
