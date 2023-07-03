import 'package:flutter/material.dart';
import '/Models/ColorsModel.dart';
import 'package:audioplayers/audioplayers.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.c});
  final cor c;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: const Color(0xffFFD8A9),
        child: Row(
          children: [
            Container(
              color: const Color(0xffFDEEDC),
              child: Image.asset(
                c.photo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    c.eeng,
                    style:
                        const TextStyle(fontSize: 18, color: Color(0xff213555)),
                  ),
                  Text(c.jap,
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
                    player.play(AssetSource(c.sound));
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
