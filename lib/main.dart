import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touku/screens/Home_page.dart';

void main() {
  runApp(Toku_app());
}

class Toku_app extends StatelessWidget {
  const Toku_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
