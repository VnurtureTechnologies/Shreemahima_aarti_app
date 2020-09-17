import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'bottom.dart';
import 'myhome.dart';
void main() {
  runApp(new MaterialApp(
    home: new Splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: new Stack(fit: StackFit.passthrough, children: <Widget>[

        new SplashScreen(
          seconds: 3,
          navigateAfterSeconds: new Myhome(),
          //set image path
          backgroundColor: Colors.white,
          onClick: ()=>print("Flutter Egypt"),
          loaderColor: Colors.red,

        ),
        new Image(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          image: new AssetImage("images/newsplashscreen.jpg"),
          fit: BoxFit.fill,
        ),

        new Theme(
          data: new ThemeData(
              brightness: Brightness.light,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                new TextStyle(color: Colors.black, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: new Container(

            child: Container(

              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage("images/newsplashscreen.jpg"),


                ),
              ),

            ),

          ),
        ),
      ]),
    );
  }
}