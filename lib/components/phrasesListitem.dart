import 'package:flutter/material.dart';
import 'package:learning_language/models/PhasesListItemdetails.dart';
import 'package:audioplayers/audioplayers.dart';

class PhasesListItem extends StatelessWidget {
  PhasesListItem({required this.phase, required this.color});
  final PhasesListItemdetails? phase;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 332,
                  child: Text(
                    overflow: TextOverflow.visible,
                    phase!.jpName,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Text(
                  overflow: TextOverflow.visible,
                  phase!.enName,
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
                  AssetSource(phase!.sound),
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
