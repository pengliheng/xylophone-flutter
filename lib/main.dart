import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MusicButton(Key("1"), Colors.red, '1'),
              MusicButton(Key("2"), Colors.orange, '2'),
              MusicButton(Key("3"), Colors.yellow, '3'),
              MusicButton(Key("4"), Colors.green, '4'),
              MusicButton(Key("5"), Colors.teal, '5'),
              MusicButton(Key("6"), Colors.blue, '6'),
              MusicButton(Key("7"), Colors.purple, '7'),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicButton extends StatelessWidget {
  MusicButton(Key key, this.color, this.name): super(key: key);

  MaterialColor color;
  String name;

  void playSound() {

    AudioCache player = new AudioCache();
    var alarmAudioPath = "note$name.wav";
    player.play(alarmAudioPath);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            playSound();
          },
          child: Text("           "),
        ),
      ),
    );
  }
}