import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        child: Icon(Icons.music_note),
        onPressed: () {
          playSound(sound);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(sound: 1, color: Colors.red[200]),
                buildKey(sound: 2, color: Colors.green[200]),
                buildKey(sound: 3, color: Colors.blue[200]),
                buildKey(sound: 4, color: Colors.grey[200]),
                buildKey(sound: 5, color: Colors.pink[200]),
                buildKey(sound: 6, color: Colors.yellow[200]),
                buildKey(sound: 7, color: Colors.orange[200]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
