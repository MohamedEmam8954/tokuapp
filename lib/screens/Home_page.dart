import 'package:flutter/material.dart';
import 'package:touku/components/item_Home_Page.dart';
import 'package:touku/screens/Color_Page.dart';
import 'package:touku/screens/Family_page.dart';
import 'package:touku/screens/Numbers_Page.dart';
import 'package:touku/screens/pharses_page.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff3d9),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff4a332b),
      ),
      body: Column(
        children: [
          Item_Home_Page(
            text: 'Numbers',
            color: Color(0xffff9700),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (Context) {
                  return Numbers_Page();
                }),
              );
            },
          ),
          //  colors_page
          Item_Home_Page(
            text: 'Family members',
            color: Color(0xff518032),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (Context) {
                  return Family_page();
                }),
              );
            },
          ),
          Item_Home_Page(
            text: 'Colors',
            color: Color(0xff673ab7),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (Context) {
                  return Color_Page();
                }),
              );
            },
          ),
          Item_Home_Page(
            text: 'Pharses',
            color: Color(0xff47a5cb),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (Context) {
                  return Pharses_page();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
