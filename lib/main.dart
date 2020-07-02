import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

dynamic _CreateButton( String filename ){
  return(
    FlatButton(
      color: Colors.red,
      onPressed: (){
        final player = AudioCache();
        player.play(filename);
      },
    )
  );
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
            ),
            FlatButton(
              color: Colors.red,
              child: Text('pressedMe'),
              onPressed: (){
                final player = AudioCache();
                player.play('note2.wav');
              },
            ),
           _CreateButton('note6.wav')

          ],
          )
      ),
    );
  }
}

