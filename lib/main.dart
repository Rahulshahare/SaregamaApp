// Author : Rahul Shahare
// Author url : https://github.com/Rahulshahare
// repository url : https://github.com/Rahulshahare/SaregamaApp

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() {
  runApp(MyApp());
}

Expanded _CreateButton(Color color, String filename ){
  return(
    Expanded(
      child:FlatButton(
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play(filename);
        },
      ) ,
    )
    
  );
}

Widget _buildArea(){
  return(
    SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

              _CreateButton( Colors.red,'note1.wav'),
              _CreateButton( Colors.orange ,'note2.wav'),
              _CreateButton( Colors.yellow ,'note3.wav'),
              _CreateButton( Colors.green ,'note4.wav'),
              _CreateButton( Colors.blue ,'note5.wav'),
              _CreateButton( Colors.indigo ,'note6.wav'),
              _CreateButton( Colors.purple ,'note7.wav'),

        ],
      ),
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
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('SaReGaMa App'),
          actions: [
            
          ],
        ),
        backgroundColor: Colors.black,
        body: DoubleBackToCloseApp(
              snackBar: const SnackBar(
                content: Text('Tap Back again to Exit'),
              ),
              child: _buildArea(),
        ),
      ),
    );
  }
}

