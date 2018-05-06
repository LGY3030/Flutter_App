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
class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;
  @override
  void initState() {
    super.initState();
    _iconAnimationController=new AnimationController(vsync: this,duration: new Duration(milliseconds: 500));
    _iconAnimation=CurvedAnimation(parent: _iconAnimationController, curve: Curves.bounceOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Image(
                  image: new AssetImage("images/Logo.png"),
                  width: _iconAnimation.value*140.0,
              ),
              new Form(
               // autovalidate: true,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "email"
                      ),
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "password"
                      ),
                    )
                  ],
                ),
                  )
            ],
          )
        ],
      )
    );
  }
}