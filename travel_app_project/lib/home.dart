import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_project/pages/food.dart';
import 'package:travel_app_project/pages/place.dart';
import 'package:travel_app_project/pages/player.dart';
import 'package:travel_app_project/pages/transport.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 1;
  final pages = [
    Place(),
    Food(),
    Player(),
    Transport(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BD Travel'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.place),
            title: Text('Place'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.fastfood),
            title: Text('Food'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.games),
            title: Text('Player'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.teal,
            icon: Icon(Icons.transfer_within_a_station),
            title: Text('Transport'),
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
