import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soNum) {
    final player = AudioCache();
    player.play('note$soNum.wav');
  }
  Expanded buildKey(Color color,int soNum) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)
        ),
        onPressed: () {
          playSound(soNum);
        },
        //style: TextButton.styleFrom(backgroundColor: Colors.color),
        child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey( Colors.red,1),
              buildKey(Colors.orange,1),
              buildKey(Colors.yellow,1),
              buildKey(Colors.green,1),
              buildKey(Colors.blue,1),
              buildKey(Colors.grey,1),
              buildKey(Colors.purple,1),
            ],
          ),
        ),
      ),
    );
  }
}
