import 'package:flutter/material.dart';

class Item_Home_Page extends StatelessWidget {
  const Item_Home_Page(
      {super.key, required this.text, required this.color, this.ontap});
  final String text;
  final Color color;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 100,
        color: color,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
