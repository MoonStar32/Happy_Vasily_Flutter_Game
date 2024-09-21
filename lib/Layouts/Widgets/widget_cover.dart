import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 97, 97, 97),
      alignment: Alignment.center,
      child: const Text(
        "Powered by Sigma energy",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: "Magic4",
        ),
      ),
    );
  }
}
