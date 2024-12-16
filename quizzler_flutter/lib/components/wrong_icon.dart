import 'package:flutter/material.dart';

class WrongAnsIcon extends StatelessWidget {
  const WrongAnsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.close,
      size: 25,
      color: Colors.red,
    );
  }
}
