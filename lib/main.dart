import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

dynamic _CreateButton(Color color, String filename ){
  return(
    FlatButton(
      color: color,
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
            
            _CreateButton( Colors.red ,'note1.wav'),
            _CreateButton( Colors.orange ,'note2.wav'),
            _CreateButton( Colors.yellow ,'note3.wav'),
            _CreateButton( Colors.green ,'note4.wav'),
            _CreateButton( Colors.blue ,'note5.wav'),
            _CreateButton( Colors.indigo ,'note6.wav'),
            _CreateButton( Colors.purple ,'note7.wav'),

          ],
          )
      ),
    );
  }
}

