import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/screens/welcome_screen.dart';
import '../screens/ChatScreen.dart';
import '../screens/ClassesScreen.dart';
import '../screens/HomeScreen.dart';
import '../screens/profile.dart';
import 'header.dart';
//import 'package:school/screens';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  //TextEditingController messageController = TextEditingController();
  int currentIndex = 0;

  final Screen = [
    //WelcomeScreen(),
    HomeScreen(),
    ChatScreen(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Theme.of(context).backgroundColor,
          backgroundColor: Colors.black87,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          showSelectedLabels: false,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black38,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: 'Chat',
              backgroundColor: Colors.black38,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'School',
              backgroundColor: Colors.black38,
            ),
          ],
          //currentIndex: _selectedIndex,
          selectedItemColor: Colors.greenAccent,
          //selectedItemColor: Colors.amber[800],

          //onTap: _onItemTapped,
        ),
      );
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.time,
  }) : super(key: key);
  final String text;
  final DateTime time;

  // @override
  @override
  Widget build(BuildContext context) {
    return Padding(
        // add some padding
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Card(
          //color: Colors.grey,
          color: Colors.black45,
          child: ClipPath(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  //borderRadius: BorderRadius.all(Radius.circular(50)),
                  left: BorderSide(color: Colors.greenAccent, width: 10),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
            clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
          ),
        ));
  }
}
