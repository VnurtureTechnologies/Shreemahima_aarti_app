import 'package:flutter/material.dart';
import 'home.dart';
import 'package:newvideoappflutter_app/aarti.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
class Aartilist extends StatefulWidget {
  @override
  _AartilistState createState() => _AartilistState();
}

class _AartilistState extends State<Aartilist> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



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
            appBar: new AppBar(
              backgroundColor: Colors.white,
              title: new Text(
                "Live Aarti List",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, false),
              ),
              iconTheme: new IconThemeData(color: Colors.white),
            ),

            body: new Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: new BoxDecoration(

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


    return Container(
        padding: new EdgeInsets.only(top:50.0,left: 60,right:60 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[



                SizedBox(
                  height: 70.0,
                ),

                Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 15.0),
                      onPressed: playYoutubeVideo,
                      child: Text(
                        "Ganeshji >>",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 15.0),
                      onPressed: playYoutubeVideo,
                      child: Text(
                        "Shivji      >>",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    )),
                SizedBox(
                  height: 20.0,
                ),

                Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 15.0),
                      onPressed: playYoutubeVideo,
                      child: Text(
                        "Mataji      >>",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    )),




          ],
        ));
  }

  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "<API_KEY>",
      videoUrl: "https://www.youtube.com/watch?v=HU1Jlt-PF00",
    );
  }
  void _register() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (ctxt) => new Aarti()),
    );
  }
  void _login() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (ctxt) => new VideoPlayerScreen()),
    );
  }

}
