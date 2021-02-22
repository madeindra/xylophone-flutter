import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(String fileName) {
    player.play(fileName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    playSound('note1.wav');
                  },
                  child: Text('One')),
              FlatButton(
                  onPressed: () {
                    playSound('note2.wav');
                  },
                  child: Text('Two')),
              FlatButton(
                  onPressed: () {
                    playSound('note3.wav');
                  },
                  child: Text('Three')),
              FlatButton(
                  onPressed: () {
                    playSound('note4.wav');
                  },
                  child: Text('Four')),
              FlatButton(
                  onPressed: () {
                    playSound('note5.wav');
                  },
                  child: Text('Five')),
              FlatButton(
                  onPressed: () {
                    playSound('note6.wav');
                  },
                  child: Text('Six')),
              FlatButton(
                  onPressed: () {
                    playSound('note7.wav');
                  },
                  child: Text('Seven')),
            ],
          ),
        ),
      ),
    );
  }
}
