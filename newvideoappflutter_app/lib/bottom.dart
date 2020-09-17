import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'PlaceholderWidget.dart';
import 'myhome.dart';
import 'aarti.dart';
import 'aartilist.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

// screen array of nevigation bar
  final _pageOptions = [
    Myhome(),
    Aartilist(),
    Aarti(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.voice_chat),
              title: Text('Live'),
              activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.border_color),
              title: Text('Booking'),
              activeColor: Colors.lightGreen
          ),

        ],
      ),
      body: _pageOptions[_selectedIndex],

    );
  }


  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
