import 'package:flutter/material.dart';
import 'package:touku/components/item_color.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class Color_Page extends StatelessWidget {
  const Color_Page({super.key});
  final List<Item_model> Items = const [
    Item_model(
      japtext: 'Blurakku',
      entext: 'black',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    Item_model(
      japtext: 'chario',
      entext: 'Brown',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    Item_model(
      japtext: 'Hokori ppoi kiiro',
      entext: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty_yellow.wav',
    ),
    Item_model(
      japtext: 'Gure',
      entext: 'gray',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    Item_model(
      japtext: 'Midori',
      entext: 'green',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    Item_model(
      japtext: 'Aka',
      entext: 'red',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    Item_model(
      japtext: 'Shiroi',
      entext: 'White',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    Item_model(
        japtext: 'Kiiro',
        entext: 'Yellow',
        image: 'assets/images/colors/yellow.png',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor: Color(0xff4a322b),
        ),
        body: ListView.builder(
            itemCount: Items.length,
            itemBuilder: (BuildContext, index) {
              return item_color(color: Items[index]);
            }));
  }
}
