import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          noteDo(Colors.blue, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_1.wav"));
          }, "Do"),
          noteDo(Colors.orange, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_2.wav"));
          }, "Re"),
          noteDo(Colors.red, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_3.wav"));
          }, "Mi"),
          noteDo(Colors.green, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_4.wav"));
          }, "Fa"),
          noteDo(Colors.yellow, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_5.wav"));
          }, "Sol"),
          noteDo(Colors.purple, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_6.wav"));
          }, "Lya"),
          noteDo(Colors.pink, () {
            final player = AudioPlayer();
            player.play(AssetSource("notes/note_7.wav"));
          }, "Si"),
        ],
      ),
    );
  }

  Expanded noteDo(Color tus, Function()? note, String text) {
    return Expanded(
      child: Container(
        color: tus,
        child: InkWell(
          onTap: note,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
