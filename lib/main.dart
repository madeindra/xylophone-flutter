import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(String fileName) {
    player.play(fileName);
  }

  Widget createButton(Color color, String filename) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(filename);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(Colors.red, 'note1.wav'),
              createButton(Colors.orange, 'note2.wav'),
              createButton(Colors.yellow, 'note3.wav'),
              createButton(Colors.green, 'note4.wav'),
              createButton(Colors.blue, 'note5.wav'),
              createButton(Colors.pink, 'note6.wav'),
              createButton(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
