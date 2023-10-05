import 'package:flutter/material.dart';
import 'package:touku/components/Item_family_page.dart';
import 'package:touku/models/item_mode_Numbersl.dart';

class Family_page extends StatelessWidget {
  const Family_page({super.key});
  final List<Item_model> Items = const [
    Item_model(
      japtext: 'chichioya',
      entext: 'father',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    Item_model(
      japtext: 'musume',
      entext: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Item_model(
      japtext: 'ojisan',
      entext: 'grand father',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand_father.wav',
    ),
    Item_model(
      japtext: 'hahaoya',
      entext: 'mother',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    Item_model(
      japtext: 'sobo',
      entext: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand_mother.wav',
    ),
    Item_model(
      japtext: 'nisan',
      entext: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older_bother.wav',
    ),
    Item_model(
      japtext: 'Ane',
      entext: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older_sister.wav',
    ),
    Item_model(
      japtext: 'musuko',
      entext: 'son',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    Item_model(
      japtext: 'ototo',
      entext: 'Younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger_brohter.wav',
    ),
    Item_model(
      japtext: 'emoto',
      entext: 'Younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger_sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Family members'),
          backgroundColor: Color(0xff4a322b),
        ),
        body: ListView.builder(
            itemCount: Items.length,
            itemBuilder: (BuildContext, index) {
              return Item_family_page(family: Items[index]);
            }));
  }
}
