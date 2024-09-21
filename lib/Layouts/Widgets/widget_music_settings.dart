import 'package:flutter/material.dart';
import 'package:minecraft_fly_game/Database/database.dart';
import 'package:minecraft_fly_game/Global/constant.dart';
import 'package:minecraft_fly_game/Global/functions.dart';

class MusicSettings extends StatefulWidget {
  const MusicSettings({super.key});

  @override
  State<MusicSettings> createState() => _MusicSettingsState();
}

class _MusicSettingsState extends State<MusicSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: myText("Music", Colors.black, 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () async {
                    write("audio", true);
                    await player.resume();
                  },
                  child: const Icon(
                    Icons.music_note_rounded,
                    size: 40,
                  )),
              GestureDetector(
                onTap: () async {
                  write("audio", false);
                  await player.pause();
                },
                child: const Icon(
                  Icons.music_off_rounded,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
