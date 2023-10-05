import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class Item_numbers_page extends StatelessWidget {
  const Item_numbers_page({super.key, required this.item});
  final Item_model item;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xfffff3d9),
                image: DecorationImage(image: AssetImage(item.image!))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  item.entext!,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(item.japtext!,
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
                player.play(AssetSource(item.sound!));
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
