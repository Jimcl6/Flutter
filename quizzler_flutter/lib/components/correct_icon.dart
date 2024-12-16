import 'package:flutter/material.dart';

class CorrectAnsIcon extends StatelessWidget {
  const CorrectAnsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.check,
      size: 25,
      color: Colors.green,
    );
  }
}
