import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.textString});

  final String textString;

  @override
  Widget build(BuildContext context) {
    return Text(
      textString,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
