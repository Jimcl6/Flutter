import 'package:flutter/material.dart';

class BtnFalse extends StatelessWidget {
  final Icon icon;
  final String text;
  final void Function()? onTap;
  const BtnFalse(
      {super.key, required this.text, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 25),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
