import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:minecraft_fly_game/Global/constant.dart';
import 'package:minecraft_fly_game/Global/functions.dart';
import 'package:minecraft_fly_game/Layouts/Widgets/widget_bird.dart';
import 'package:minecraft_fly_game/Layouts/Widgets/widget_gradient_button.dart';
import 'package:minecraft_fly_game/Resources/strings.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final myBox = Hive.box('user');

  @override
  void initState() {
    // Todo : initialize the database  <---
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: background(Str.image),
        child: Column(
          children: [
            // Flappy bird text
            Container(
                margin: EdgeInsets.only(top: size.height * 0.25),
                child: myText(
                  "Happy Vasily",
                  Colors.white,
                  70,
                )),
            Bird(yAxis, birdWidth, birdHeight),
            _buttons(),
            AboutUs(
              size: size,
            )
          ],
        ),
      ),
    );
  }
}

// three buttons
Column _buttons() {
  return Column(
    children: [
      const Button(
        buttonType: "text",
        height: 60,
        width: 278,
        icon: Icon(
          Icons.play_arrow_rounded,
          size: 60,
          color: Colors.green,
        ),
        page: Str.gamePage,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button(
            buttonType: "icon",
            height: 60,
            width: 110,
            icon: Icon(
              Icons.settings,
              size: 40,
              color: Colors.grey.shade900,
            ),
            page: Str.settings,
          ),
        ],
      ),
    ],
  );
}

class AboutUs extends StatelessWidget {
  final Size size;
  const AboutUs({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.2),
    );
  }
}
