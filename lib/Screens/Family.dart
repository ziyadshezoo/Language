import 'package:flutter/material.dart';
import '/Models/FamilyModel.dart';
import '../Components/ItemsFamliy.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<fam> n = const [
    fam(
      photo: "assets/FamilyPhoto/family_father.png",
      eeng: "Father",
      jap: "Chichioya",
      sound: "FamilySounds/father.wav",
    ),
    fam(
        sound: "FamilySounds/daughter.wav",
        photo: "assets/FamilyPhoto/family_daughter.png",
        eeng: "Daughter",
        jap: "Musume"),
    fam(
        sound: "FamilySounds/grandfather.wav",
        photo: "assets/FamilyPhoto/family_grandfather.png",
        eeng: "Grand Father",
        jap: "Ojīsan"),
    fam(
        sound: "FamilySounds/mother.wav",
        photo: "assets/FamilyPhoto/family_mother.png",
        eeng: "Mother",
        jap: "Hahaoya"),
    fam(
        sound: "FamilySounds/grandmother.wav",
        photo: "assets/FamilyPhoto/family_grandmother.png",
        eeng: "Grand Mother",
        jap: "Sobo"),
    fam(
        sound: "FamilySounds/olderbother.wav",
        photo: "assets/FamilyPhoto/family_older_brother.png",
        eeng: "Older Brother",
        jap: "Nīsan"),
    fam(
        sound: "FamilySounds/oldersister.wav",
        photo: "assets/FamilyPhoto/family_older_sister.png",
        eeng: "Older Sister",
        jap: "Ane"),
    fam(
        sound: "FamilySounds/son.wav",
        photo: "assets/FamilyPhoto/family_son.png",
        eeng: "Son",
        jap: "Musuko"),
    fam(
        sound: "FamilySounds/youngerbrohter.wav",
        photo: "assets/FamilyPhoto/family_younger_brother.png",
        eeng: "Younger Brother",
        jap: "otōto"),
    fam(
        sound: "FamilySounds/youngersister.wav",
        photo: "assets/FamilyPhoto/family_younger_sister.png",
        eeng: "Younger Sister",
        jap: "Imōto")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffEEE2DE),
          title: const Text(
            "Family Member",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: n.length,
          itemBuilder: (context, numb) {
            return Items(m: n[numb]);
          },
        ));
  }
}
