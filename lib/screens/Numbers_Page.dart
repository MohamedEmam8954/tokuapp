import 'package:flutter/material.dart';
import 'package:touku/components/Item_number_page.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class Numbers_Page extends StatelessWidget {
  const Numbers_Page({super.key});
  final List<Item_model> Items = const [
    Item_model(
      japtext: 'ichi',
      entext: 'one',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Item_model(
      japtext: 'Ni',
      entext: 'two',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Item_model(
      japtext: 'San',
      entext: 'three',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Item_model(
      japtext: 'shi',
      entext: 'four',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Item_model(
      japtext: 'Go',
      entext: 'five',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Item_model(
      japtext: 'Roku',
      entext: 'six',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Item_model(
      japtext: 'sebun',
      entext: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Item_model(
      japtext: 'Hachi',
      entext: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Item_model(
      japtext: 'Kyū',
      entext: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Item_model(
      japtext: 'Jū',
      entext: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: Color(0xff4a322b),
        ),
        body: ListView.builder(
            itemCount: Items.length,
            itemBuilder: (BuildContext, index) {
              return Item_numbers_page(
                item: Items[index],
              );
            }));
  }
}
