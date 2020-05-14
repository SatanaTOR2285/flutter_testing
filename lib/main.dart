import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
    title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Background Changer"),
        ),
        body: HomePage(),
      )
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange,
  ];

  var currentColor = Colors.black;
  var boxcolor = Colors.black;
  setRandomColor(){
    var rand = Random().nextInt(colors.length);
    var button = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rand];
      boxcolor = colors[button];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: boxcolor,
          padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
          child: Text('Привет!',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: setRandomColor(),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        )
      ),
    );
  }
}