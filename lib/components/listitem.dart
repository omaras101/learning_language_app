import 'package:flutter/material.dart';
import 'package:learning_language/models/ListItemdetails.dart';
import 'package:audioplayers/audioplayers.dart';


class LIstItem extends StatelessWidget {
  LIstItem({required this.number, required this.color});
  final ListItemDetelease? number;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Color(0xfffef6db),
              child: Image.asset(
                number!.image,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number!.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number!.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
              onPressed: () {
                // AudioCache.instance = AudioCache();
                AudioCache audioCache = AudioCache.instance;
                audioCache.prefix = 'assets/sounds/';
                final player = AudioPlayer();
                player.play(
                  AssetSource(number!.sound),
                );
              },
            ),
            // child: Icon(
            //   Icons.play_arrow,
            //   color: Colors.white,
            //   size: 40,
            // ),
          ),
        ],
      ),
    );
  }
}
