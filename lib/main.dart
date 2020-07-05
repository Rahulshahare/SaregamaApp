// Author : Rahul Shahare
// Author url : https://github.com/Rahulshahare
// repository url : https://github.com/Rahulshahare/SaregamaApp

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() {
  //runApp(MyApp());
  runApp(
    MaterialApp(
      home: SecondRoute(),
      title: 'SaReGaMa App',
      )
    );
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

Widget _buildArea(bool makeFade){
  bool light = makeFade;
  return(
    SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

              _CreateButton( light ? Colors.red[300] : Colors.red,'note1.wav'),
              _CreateButton( light ? Colors.orange[300] : Colors.orange ,'note2.wav'),
              _CreateButton( light ? Colors.yellow[300] : Colors.yellow ,'note3.wav'),
              _CreateButton( light ? Colors.green[300] : Colors.green ,'note4.wav'),
              _CreateButton( light ? Colors.blue[300] : Colors.blue ,'note5.wav'),
              _CreateButton( light ? Colors.indigo[300] : Colors.indigo ,'note6.wav'),
              _CreateButton( light ? Colors.purple[300] : Colors.purple ,'note7.wav'),

        ],
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool makeFade = false;

  void _toggleTheme(){
    setState(() {
        if (makeFade) {
          makeFade = false;
        } else {
          makeFade = true;
        }
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          brightness: Brightness.dark,
          title: Text('SaReGaMa App'),
          actions: [
            IconButton(
              icon: Icon(Icons.language),
              onPressed: (){
                _toggleTheme();
              },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: DoubleBackToCloseApp(
              snackBar: const SnackBar(
                content: Text('Tap Back again to Exit'),
              ),
              child: _buildArea(makeFade),
        ),
      );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
        backgroundColor: Colors.black,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
            ),
            Text(
              'Rahul Shahare',
              style: TextStyle(
                fontFamily:'Pacifoco' ,
              ),
              ),
            Text('Founder CEO at Oceangreen Technologies'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Icon(Icons.phone),
                Text('8999445733'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email),
                Text('rahulshahare@gmail.com'),
              ],
            ),
          ],
      )
    );
  }
}