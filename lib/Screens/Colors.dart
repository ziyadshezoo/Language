import 'package:flutter/material.dart';
import 'package:flutter_application_3/Models/ColorsModel.dart';
import 'package:flutter_application_3/Components/ItemColors.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<cor> c = const [
    cor(
      sound: 'Colors/Sounds/black.wav',
      jap: 'Burakku',
      eeng: 'black',
      photo: 'assets/Colors/Image/color_black.png',
    ),
    cor(
      sound: 'Colors/Sounds/brown.wav',
      jap: 'Chairo',
      eeng: 'brown',
      photo: 'assets/Colors/Image/color_brown.png',
    ),
    cor(
      sound: 'Colors/Sounds/dustyyellow.wav',
      jap: 'Hokori ppoi kiiro',
      eeng: 'dusty yellow',
      photo: 'assets/Colors/Image/color_dusty_yellow.png',
    ),
    cor(
      sound: 'Colors/Sounds/gray.wav',
      jap: 'Gurē',
      eeng: 'gray',
      photo: 'assets/Colors/Image/color_gray.png',
    ),
    cor(
      sound: 'Colors/Sounds/green.wav',
      jap: 'Midori',
      eeng: 'green',
      photo: 'assets/Colors/Image/color_green.png',
    ),
    cor(
      sound: 'Colors/Sounds/red.wav',
      jap: 'Aka',
      eeng: 'red',
      photo: 'assets/Colors/Image/color_red.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Colors"),
          backgroundColor: Color(0xffEA906C),
        ),
        body: ListView.builder(
          itemCount: c.length,
          itemBuilder: (context, numb) {
            return Items(c: c[numb]);
          },
        ));
  }
}
