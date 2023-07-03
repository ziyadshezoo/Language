import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/Colors.dart';
import 'package:flutter_application_3/Screens/Family.dart';
import 'package:flutter_application_3/Screens/Phrases.dart';
import "Screens/Numbers.dart";

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Language J",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            CategoryBar(
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return NumbersPage();
                  }));
                },
                s: "Numbers",
                c: const Color(0xff2B2A4C),
                c2: Colors.white),
            CategoryBar(
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return FamilyMembersPage();
                  }));
                },
                s: "Family Member",
                c: const Color(0xffEEE2DE),
                c2: Colors.black),
            CategoryBar(
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ColorsPage();
                  }));
                },
                s: "Colors",
                c: const Color(0xffEA906C),
                c2: Colors.white),
            CategoryBar(
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return PhrasesPage();
                  }));
                },
                s: "Phrases",
                c: const Color(0xffB31312),
                c2: Colors.white),
          ],
        ));
  }
}

class CategoryBar extends StatelessWidget {
  CategoryBar({this.s, this.c, this.c2, this.OnTap});
  String? s;
  Color? c;
  Color? c2;
  Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        color: c,
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            s!,
            style: TextStyle(fontSize: 18, color: c2),
          ),
        ),
      ),
    );
  }
}
