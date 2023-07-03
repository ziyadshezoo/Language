import 'package:flutter/material.dart';
import '/models/NumberModel.dart';
import 'package:audioplayers/audioplayers.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.n});
  final num n;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: const Color.fromARGB(255, 213, 211, 255),
        child: Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 241, 240, 255),
              child: Image.asset(
                n.photo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    n.eeng,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(n.jap, style: const TextStyle(fontSize: 18))
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
                    player.play(AssetSource(n.sound));
                  } catch (e) {
                    print(e);
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                ))
          ],
        ));
  }
}
