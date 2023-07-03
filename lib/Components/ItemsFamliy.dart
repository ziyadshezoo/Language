import 'package:flutter/material.dart';
import '/Models/FamilyModel.dart';
import 'package:audioplayers/audioplayers.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.m});
  final fam m;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: const Color(0xffD8C4B6),
        child: Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 243, 234),
              child: Image.asset(
                m.photo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    m.eeng,
                    style:
                        const TextStyle(fontSize: 18, color: Color(0xff213555)),
                  ),
                  Text(m.jap,
                      style: const TextStyle(
                          fontSize: 18, color: Color(0xff213555)))
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () async {
                  try {
                    final player = AudioPlayer();
                    player.play(AssetSource(m.sound));
                  } catch (e) {
                    print(e);
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Color(0xff213555),
                ))
          ],
        ));
  }
}
