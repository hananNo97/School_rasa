import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController messageController = TextEditingController();
  List<ChatBubble> messages = [
    ChatBubble(
      text: 'WELCOME TO OUR SCHOOL',
      //isCurrentUser: true,
      time: DateTime.parse("2020-06-06 12:30:00"),
    ),
    ChatBubble(
      text: 'WE CAN HELP YOU',
      //isCurrentUser: true,
      time: DateTime.parse("2020-06-06 12:30:00"),
    ),
    ChatBubble(
      text: 'WE CAN HELP YOU',
      //isCurrentUser: true,
      time: DateTime.parse("2020-06-06 12:30:00"),
    ),
    ChatBubble(
      text: 'WE CAN HELP YOU',
      //isCurrentUser: true,
      time: DateTime.parse("2020-06-06 12:30:00"),
    ),
    ChatBubble(
      text: 'WE CAN HELP YOU',
      //isCurrentUser: true,
      time: DateTime.parse("2020-06-06 12:30:00"),
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: ListView(
          children: <Widget>[
            // ListView(children: const messages),
            Header(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                style: TextStyle(color: CupertinoColors.black),
                cursorColor: CupertinoColors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  border: InputBorder.none,
                  fillColor: Theme.of(context).primaryColor,
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(color: CupertinoColors.white),
                  prefixIcon: Icon(Icons.search, color: CupertinoColors.black, size: 26.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            SizedBox(
              height: 345,
              child: Container(
                //child:Column(children: [
                padding: EdgeInsets.all(35.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0), bottomLeft: Radius.circular(50.0), bottomRight: Radius.circular(50.0)),
                ),
                child: new ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (_, index) => messages[index],
                ),
              ),
            ),
          ],
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
  // final bool isCurrentUser;

  // TODO: Implement build method
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
                // border: Border.all(width: 5, color: Colors.black12),
                // borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
            clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
          ),
        )
        // child: Align(
        //   // align the child within the container
        //   // alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,

        //   child: DecoratedBox(
        //     // chat bubble decoration
        //     decoration: BoxDecoration(
        //       color: Colors.green[300],
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(20),
        //       child: Text(
        //         text,
        //         style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
