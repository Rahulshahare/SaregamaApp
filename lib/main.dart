// Author : Rahul Shahare
// Author url : https://github.com/Rahulshahare
// repository url : https://github.com/Rahulshahare/SaregamaApp

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  //runApp(MyApp());
  runApp(
    MaterialApp(
      home: MyApp(),
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

              _CreateButton( light ? Colors.red[600] : Colors.red,'note1.wav'),
              _CreateButton( light ? Colors.orange[600] : Colors.orange ,'note2.wav'),
              _CreateButton( light ? Colors.yellow[600] : Colors.yellow ,'note3.wav'),
              _CreateButton( light ? Colors.green[600] : Colors.green ,'note4.wav'),
              _CreateButton( light ? Colors.blue[600] : Colors.blue ,'note5.wav'),
              _CreateButton( light ? Colors.indigo[600] : Colors.indigo ,'note6.wav'),
              _CreateButton( light ? Colors.purple[600] : Colors.purple ,'note7.wav'),

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
          title: Text(
            'Saregama App',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 25.0,
            ),
            ),
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

  final Uri _emailLaunchData = Uri(
    scheme: 'mailto',
    path: 'rahulshahare@gmail.com',
    queryParameters: {
      'subject':'Hey its from Saregama App',
      'body':'Hi there, I am feeling happy to contact you',
    }
  );
  final Uri _phoneLaunchData = Uri(
    scheme: 'tel',
    path: '+91 8999445733'
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/rahul.jpg'),
              ),
              Text(
                'Rahul Shahare',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Founder CEO @ OCEANGREEN TECHNOLOGIES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () => UrlLauncher.launch(_phoneLaunchData.toString()),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                    ),
                  title:  Text(
                    '8999445733',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 20.0,
                    ),
                    ),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () => UrlLauncher.launch(_emailLaunchData.toString()),
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                    ),
                  title:  Text(
                    'rahulshahare@gmail.com',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 20.0,
                    ),
                    ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}