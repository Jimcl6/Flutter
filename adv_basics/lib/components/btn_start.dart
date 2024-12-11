import 'package:flutter/material.dart';

class BtnStart extends StatelessWidget {
  final Function()? onTap;
  final String title;
  const BtnStart({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade700,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: const [
            BoxShadow(
              color: Colors.white38,
              offset: Offset(
                0,
                0,
              ),
              blurRadius: 7,
              spreadRadius: 0.5,
            ),
            BoxShadow(
                color: Color.fromARGB(255, 56, 1, 91),
                offset: Offset(5.0, 5.0),
                blurRadius: 10,
                spreadRadius: 1)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.keyboard_double_arrow_right_sharp,
              color: Colors.white,
            ),
            const SizedBox(
              width: 25,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
