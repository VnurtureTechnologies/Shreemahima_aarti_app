import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'package:newvideoappflutter_app/aarti.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String check;
String url;
String logo = " ";
String defult ="શ્રી વાસુપૂજ્ય સ્વામી નમઃ ";
String flg;
  @override
  void initState() {
    mytext();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () => Future.value(false),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blue[900],
          accentColor: Colors.green,
        ),
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: new Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('images/newpalna.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Form(key: _formKey, child: FormUI()),
                ),
              ),
            )),
      ),
    );
  }

  Widget FormUI() {
    double _animatedHeight = 100.0;

    return Container(
        padding: new EdgeInsets.only(top:0.0,left: 0,right:0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            SizedBox(
              height: 60.0,
            ),


            SizedBox(
              height: 30.0,
            ),


      Align(
    alignment: Alignment.bottomCenter,
    child:  Container(
      height: 50,
        width: 700,
        color: Colors.white,
          child: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(top:8.0,left: 50,right: 50),

              child:Text(logo.toString(),

                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,fontSize: 20)),
            ),
            onTap: () async {
              print(("hello"));
              try {
                final result = await InternetAddress.lookup('google.com');
                if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                  print('connected');
                  flag();
                }
              } on SocketException catch (_) {
                print('not connected');
                check== "no";
                FlutterToast.showToast(
                    msg: "please check your network conection",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            },
          )),
    ),




          ],
        )
        );

  }

  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "<API_KEY>",
      videoUrl: "https://www.youtube.com/watch?v=hFr38cZIdV0",
    );
  }
  void _register() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (ctxt) => new Aarti()),
    );
  }
  void getHttp() async {
    try {
      Response response = await Dio().get("https://shantivansangh.firebaseio.com/livestreaming.json");

     url = response.data['url'].toString();
      print(url);
      FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "<API_KEY>",
        videoUrl: url,
      );
    } catch (e) {
      print(e);
    }
  }
  void flag() async {
    try {
      Response response = await Dio().get("https://shantivansangh.firebaseio.com/liveflag.json");

      flg = response.data['flag'].toString();
      print(flg);
      if(flg == "yes"){
        Response response = await Dio().get("https://shantivansangh.firebaseio.com/livestreaming.json");

        url = response.data['url'].toString();
        print(url);
        _download(url);
      }else{
       getHttp();
      }

    } catch (e) {
      print(e);
    }
  }
  void mytext() async {
    try {
      try {

        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          print('connected');
          Response response = await Dio().get("https://shantivansangh.firebaseio.com/livestreamtext.json");
          logo = response.data['text'].toString();
          print(logo);
        //  if(logo == ""||logo == Null){
            //logo= defult;
         // }
          setState(() {
            logo.toString();
          });

        }
      } on SocketException catch (_) {
        print('not connected');
        check== "no";
        logo="    શ્રી વાસુપૂજ્ય સ્વામી નમઃ   >>  ";
        setState(() {
          logo.toString();
        });
      }

    } catch (e) {
      print(e);
    }
  }
  void _login() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (ctxt) => new VideoPlayerScreen()),
    );
  }
  _download(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
