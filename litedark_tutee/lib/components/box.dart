import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key, this.child, required this.color});

  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      width: 200,
      height: 200,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
