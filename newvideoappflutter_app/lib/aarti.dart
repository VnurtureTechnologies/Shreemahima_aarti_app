import 'package:flutter/material.dart';
import 'home.dart';

import 'package:newvideoappflutter_app/aarti.dart';
import 'myhome.dart';


class Aarti extends StatefulWidget {
  @override
  _AartiState createState() => _AartiState();
}

class _AartiState extends State<Aarti> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final businesnameController = TextEditingController();
  final businesshoursController = TextEditingController();
  final adressController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final historyController = TextEditingController();
  final urlController = TextEditingController();
  final profileController = TextEditingController();
  final prodectController = TextEditingController();
  final areaController = TextEditingController();
  final otheeController = TextEditingController();
  String maritalstatus;
  bool visibilityMarried = false;
  var _currencies = [
    "Ganeshji",
    "Shivji",
    "Mataji",

  ];
  List Mariststatus = [ "Ganeshji",
    "Shivji",
    "Mataji",];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Aarti Booking",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context, false),
          ),
          iconTheme: new IconThemeData(color: Colors.black),
        ),
        resizeToAvoidBottomPadding: true,

        body: Center(child: new Form(key: _formKey, child: ClientUI())),
      ),
    );
  }
  Widget ClientUI() {


    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Stack(children: <Widget>[
          Container(

            color: Color(0xff73825b),
          ),



        ]),
        SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: height / 9.7),
                child: Container(
                  width: 790,
                  height: 120,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('images/aarti.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 600,
                decoration: BoxDecoration(
                    boxShadow: [new BoxShadow(blurRadius: 1.0)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(18.0),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text("Aarti Booking",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: businesnameController,
                        keyboardType: TextInputType.text,
                        validator: (value) {


                        },
                        onSaved: (String value) {
                          businesnameController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Full Name",
                        ),
                      ),


                      SizedBox(

                        height: 15.0,
                      ),
                      TextFormField(
                        controller: adressController,
                        keyboardType: TextInputType.text,
                        validator: (value) {


                        },
                        onSaved: (String value) {
                          adressController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Email Id",
                        ),
                      ),


                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: mobileController,
                        keyboardType: TextInputType.text,
                        validator: (value) {

                        },
                        onSaved: (String value) {
                          mobileController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Phone number",
                        ),
                      ),


                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.text,
                        validator: (value) {

                        },
                        onSaved: (String value) {
                          emailController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Adrees",
                        ),
                      ),





                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: urlController,
                        keyboardType: TextInputType.text,
                        validator: (value) {

                        },
                        onSaved: (String value) {
                          urlController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          labelText: "Aarti Price 500 ",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      TextFormField(
                        controller: urlController,
                        keyboardType: TextInputType.text,
                        validator: (value) {

                        },
                        onSaved: (String value) {
                          urlController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Adhar Card No",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      TextFormField(
                        controller: urlController,
                        keyboardType: TextInputType.text,
                        validator: (value) {

                        },
                        onSaved: (String value) {
                          urlController.text = value;
                        },
                        decoration: InputDecoration(

                          // contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "PAN Card No",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      Container(height: 42,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            items: Mariststatus
                                .map((item) =>
                                DropdownMenuItem(
                                  child: Text(item),
                                  value: item,
                                ))
                                .toList(),
                            onChanged: (newVal) {
                              setState(() {
                                maritalstatus = newVal;
                                if (newVal == "Married") {
                                  visibilityMarried = true;


                                }
                                else {
                                  visibilityMarried = false;
                                }
                              });
                            },
                            isExpanded: true,
                            value: maritalstatus == "" ? null : maritalstatus,
                            hint: Text("Aarti Name",
                            ),
                          ),),
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.grey),),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      SizedBox(
                        height: 10.0,
                      ),


                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      SizedBox(
                        height: 10.0,
                      ),






                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
    new RaisedButton(
    color: Colors.white,
    padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
    onPressed: _register,
    child: new Text(
    'Submit',
    style: new TextStyle(fontSize: 20.0, color: Colors.black),
    ),
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(30.0))),



            ],
          ),
        ),

      ],
    );
  }



  void _register() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Myhome()));
  }

}

