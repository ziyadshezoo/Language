import 'package:flutter/material.dart';
import '/models/NumberModel.dart';
import '/Components/Items.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<num> n = const [
    num(
      photo: "assets/img/number_one.png",
      eeng: "One",
      jap: "Ichi",
      sound: "sounds/Count.wav",
    ),
    num(
        sound: "sounds/n2.wav",
        photo: "assets/img/number_two.png",
        eeng: "two",
        jap: "Ni"),
    num(
        sound: "sounds/n3.wav",
        photo: "assets/img/number_three.png",
        eeng: "Three",
        jap: "San"),
    num(
        sound: "sounds/n4.wav",
        photo: "assets/img/number_four.png",
        eeng: "Four",
        jap: "Shi"),
    num(
        sound: "sounds/n5.wav",
        photo: "assets/img/number_five.png",
        eeng: "Five",
        jap: "Go"),
    num(
        sound: "sounds/n6.wav",
        photo: "assets/img/number_six.png",
        eeng: "Six",
        jap: "Roku"),
    num(
        sound: "sounds/n7.wav",
        photo: "assets/img/number_seven.png",
        eeng: "Seven",
        jap: "Sebun"),
    num(
        sound: "sounds/n8.wav",
        photo: "assets/img/number_eight.png",
        eeng: "Eight",
        jap: "Hachi"),
    num(
        sound: "sounds/n9.wav",
        photo: "assets/img/number_nine.png",
        eeng: "Nine",
        jap: "Kyū"),
    num(
        sound: "sounds/n10.wav",
        photo: "assets/img/number_ten.png",
        eeng: "Ten",
        jap: "Jū")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: Color(0xff2B2A4C),
        ),
        body: ListView.builder(
          itemCount: n.length,
          itemBuilder: (context, numb) {
            return Items(n: n[numb]);
          },
        ));
  }
}

List<Widget> getList(List<num> n) {
  List<Items> itemList = [];
  for (int i = 0; i < n.length; i++) {
    itemList.add(Items(n: n[i]));
  }
  return itemList;
}
