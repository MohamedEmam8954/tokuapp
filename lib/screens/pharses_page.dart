import 'package:flutter/material.dart';
import 'package:touku/components/item_pharses.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class Pharses_page extends StatelessWidget {
  const Pharses_page({super.key});
  final List<Item_model> Items = const [
    Item_model(
        japtext: 'Kōdokusurekotoowasurenaide kudasai',
        entext: 'don\'t forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Item_model(
        japtext: 'Watashi wa puroguramingu ga daisukidesu',
        entext: 'i love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    Item_model(
        japtext: 'Puroguramingu wa kantandesu',
        entext: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    Item_model(
        japtext: 'Doko ni iku no',
        entext: 'what are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    Item_model(
        japtext: 'Anata no namae wa nandesuka',
        entext: 'what\'s your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    Item_model(
        japtext: 'Watashi wa anime ga daisukidesu',
        entext: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    Item_model(
        japtext: " Go kibun wa ikagadesu ka ",
        entext: 'how are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Item_model(
        japtext: 'Kimasu ka',
        entext: 'are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pharses'),
          backgroundColor: Color(0xff4a322b),
        ),
        body: ListView.builder(
            itemCount: Items.length,
            itemBuilder: (BuildContext, index) {
              return item_pharses(pharses: Items[index]);
            }));
  }
}
