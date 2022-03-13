import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                AudioCache player = new AudioCache();
                const alarmAudioPath = "note1.wav";
                player.play(alarmAudioPath);
              },
              child: Text("click me"),
            ),
          ),
        ),
      ),
    );
  }
}
