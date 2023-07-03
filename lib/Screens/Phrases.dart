import 'package:flutter/material.dart';
import 'package:flutter_application_3/Models/phraseModel.dart';
import 'package:flutter_application_3/Components/ItemPhrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<phr> ph = const [
    phr(
      sound: 'PhrasesSounds/dont_forget_to_subscribe.wav',
      jap: 'Kōdoku suru koto o wasurenaide kudasai',
      eeng: 'dont forget to subscribe',
    ),
    phr(
      sound: 'PhrasesSounds/i_love_programming.wav',
      jap: 'Watashi wa puroguramingu daisukidesu',
      eeng: 'i love  programming',
    ),
    phr(
      sound: 'PhrasesSounds/programming_is_easy.wav',
      jap: 'Puroguramingu wa kantandesu ',
      eeng: 'programming is easy',
    ),
    phr(
      sound: 'PhrasesSounds/where_are_you_going.wav',
      jap: 'Doko ni iku no',
      eeng: 'where are you going',
    ),
    phr(
      sound: 'PhrasesSounds/what_is_your_name.wav',
      jap: 'Namae wa nandesu ka',
      eeng: 'what is your name ?',
    ),
    phr(
      sound: 'PhrasesSounds/i_love_anime.wav',
      jap: 'Watashi wa anime ga daisukidesu',
      eeng: 'i love anime',
    ),
    phr(
      sound: 'PhrasesSounds/how_are_you_feeling.wav',
      jap: 'Go kibun wa ikagadesu ka',
      eeng: 'how are you feeling?',
    ),
    phr(
      sound: 'PhrasesSounds/are_you_coming.wav',
      jap: 'Kimasu ka',
      eeng: 'are you coming?',
    ),
    phr(
      sound: 'PhrasesSounds/yes_im_coming.wav',
      jap: 'Hai watashi wa kite imasu',
      eeng: 'yes i am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phrases"),
          backgroundColor: const Color(0xffB31312),
        ),
        body: ListView.builder(
          itemCount: ph.length,
          itemBuilder: (context, numb) {
            return Items(ph: ph[numb]);
          },
        ));
  }
}
