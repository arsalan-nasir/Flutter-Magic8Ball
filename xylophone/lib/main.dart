import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  void playSound(number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded buildUi(sound, color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            buildUi(1, Colors.red),
            buildUi(2, Colors.orange),
            buildUi(3, Colors.yellow),
            buildUi(4, Colors.green),
            buildUi(5, Colors.teal),
            buildUi(6, Colors.blue),
            buildUi(7, Colors.purple),
          ],
        ),
      ),
    ),
  ));
}
