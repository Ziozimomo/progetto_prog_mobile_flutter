import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameLoseScreen extends StatefulWidget {
  GameLoseScreen ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _GameLoseScreen createState() => _GameLoseScreen();
}
class _GameLoseScreen extends State<GameLoseScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          leading: BackButton(
            onPressed:(){
              Navigator.pushNamed(context, '/');
            },
          )
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

          child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Text("HAI PERSO!",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green))),

                Container(
                    margin: EdgeInsets.only(top: 70),
                    child: Text("La parola era:",
                        textAlign: TextAlign.left,
                        style:
                        TextStyle(fontSize: 22))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        child: Text("TORNA AL MENÙ"),
                        onPressed: () {
                          //TODO navigation
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF9AA33),
                            textStyle: TextStyle(fontSize: 22))),
                    SizedBox(width: 50),
                    ElevatedButton(
                        child: Text("RIGIOCA"),
                        onPressed: () {
                          //TODO navigation
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF9AA33),
                            textStyle: TextStyle(fontSize: 22))),
                  ],
                ),
              ]
          )
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
