import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.color, required this.onTap});

  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45),
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text('TAP!'),
        ),
      ),
    );
  }
}
