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
                color: Colors.red,
                onPressed: () {
                  playSound('note1.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound('note2.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound('note3.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound('note4.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound('note5.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.pink,
                onPressed: () {
                  playSound('note6.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound('note7.wav');
                },
                child: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
