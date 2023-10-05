import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class item_color extends StatelessWidget {
  const item_color({super.key, required this.color});
  final Item_model color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                //shape: BoxShape.circle,
                color: Color(0xfffff3d9),
                image: DecorationImage(image: AssetImage(color.image!))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  color.entext!,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(color.japtext!,
                    style: TextStyle(fontSize: 25, color: Colors.white)),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(color.sound!));
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
