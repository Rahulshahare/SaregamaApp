import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saregama-App',
      home: Scaffold(
        body: Column(
          children: [
            FlatButton(
              color: Colors.red,
              child: Text('pressedMe'),
              onPressed: (){
                final player = AudioCache();
                player.play('note1.wav');
              },
              )
          ],
          )
      ),
    );
  }
}

