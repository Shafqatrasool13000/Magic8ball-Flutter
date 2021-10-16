import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red,
    ));
    return MaterialApp(
      title: '8 Ball Flutter App',
      home: CustomUI(),
    );
  }
}

class CustomUI extends StatefulWidget {
  @override
  _CustomUIState createState() => _CustomUIState();
}

class _CustomUIState extends State<CustomUI> {
  int changeImage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Ask Me Everything'),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                changeImage = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$changeImage.png')),
      ),
    );
  }
}
