// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 97, 97, 97),
      alignment: Alignment.center,
      child: Text(
        "Powered by Sigma energy",
        style:
            TextStyle(color: Colors.white, fontSize: 30, fontFamily: "Magic4"),
      ),
    );
  }
}
