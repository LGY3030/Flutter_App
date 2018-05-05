import 'package:flutter/material.dart';

void main() => runApp(new FlutterApp());

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "FlutterApp",
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: new LoginPage()
       );
}
}
class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: new AssetImage("images/Dog.jpg"),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black54
            ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(

                  image: new AssetImage("images/Logo.png"),
                  width: 200.0,
              )
            ],
          )
        ],
      )
    );
  }
}