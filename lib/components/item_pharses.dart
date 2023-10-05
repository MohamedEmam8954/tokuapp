import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class item_pharses extends StatelessWidget {
  const item_pharses({super.key, required this.pharses});
  final Item_model pharses;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff46a5cb),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(pharses.japtext!,
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  pharses.entext!,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(pharses.sound!));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
