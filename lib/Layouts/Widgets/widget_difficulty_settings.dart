import 'package:flutter/material.dart';
import 'package:minecraft_fly_game/Database/database.dart';
import 'package:minecraft_fly_game/Global/constant.dart';
import 'package:minecraft_fly_game/Global/functions.dart';

class DifficultySettings extends StatelessWidget {
  const DifficultySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.026,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: myText("Difficulty", Colors.black, 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              gameButton(() {
                barrierMovement = 0.05;
                write("level", barrierMovement);
              }, "Easy", Colors.green.shade300),
              gameButton(() {
                barrierMovement = 0.08;
                write("level", barrierMovement);
              }, "Medium", Colors.yellow.shade700),
              gameButton(() {
                barrierMovement = 0.1;
                write("level", barrierMovement);
              }, "Hard", Colors.red.shade300),
            ],
          ),
        ],
      ),
    );
  }
}
