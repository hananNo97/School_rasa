// ignore_for_file: use_key_in_widget_constructors

import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import '../models/reply_model.dart';
import '../widgets/header.dart';
import '../utilities/posts.dart';
//import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class ChatScreen extends StatefulWidget {
  // const Chat({Key? key}) : super(key: key);
  // final String title ;
  //const Chat({Key? key, required this.title}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatScreen> {
  TextEditingController messageController = TextEditingController();
  // List<posts>?posts;
  //Locale locale;
  late String url;
  List<ChatBubble> messages = [
    ChatBubble(
      text: 'hello',
      isCurrentUser: true,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: Scaffold(
          // Future<http.Response> getBotResponse(String senderId, String message) {
          //     return http.post(
          //       'http://your-bot-ip:5005/webhooks/rest/webhook',
          //       headers: <String, String>{
          //         'Content-Type': 'application/json; charset=UTF-8',
          //       },
          //       body: jsonEncode(<String, String>{
          //         'sender': senderId,
          //         'message': message
          //       }),
          //     );
          // }
          backgroundColor: Theme.of(context).backgroundColor,
          //(333739),
          body: ListView(
            children: <Widget>[
              // ListView(children: const messages),
              Header(),

              Padding(
                // backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                height: 345,
                child: Container(
                  //child:Column(children: [
                  padding: EdgeInsets.all(35.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0), topRight: Radius.circular(80.0), bottomLeft: Radius.circular(80.0), bottomRight: Radius.circular(80.0)),
                  ),
                  child: new ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (_, index) => messages[index],
                  ),
                ),
              ),
              Align(
                // backgroundColor: Theme.of(context).backgroundColor,

                // style: TextStyle(color: CupertinoColors.black),
                alignment: Alignment.bottomLeft,
                child: Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.black87,
                  //   //backgroundColor: Theme.of(context).backgroundColor,
                  // ),
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.black45,
                  child: Row(
                    //  backgroundColor: Theme.of(context).backgroundColor,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          // style: TextStyle(color: kTextColor),
                          cursorColor: CupertinoColors.black,
                          style: TextStyle(color: CupertinoColors.white),
                          // cursorColor: kTextColor,
                          controller: messageController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            border: InputBorder.none,
                            //fillColor: Theme.of(context).primaryColor,
                            //fillColor: Color.fromRGBO(0, 0, 0, 0),
                            //fillColor: Colors.greenAccent,
                            filled: true,
                            hintText: "Write message...",
                            //hintStyle: TextStyle(color: kTextColor),
                            hintStyle: TextStyle(color: CupertinoColors.white),
                            // prefixIcon: Icon(Icons.search, color: kTextColor, size: 26.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      new FloatingActionButton(
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 20,
                        ),

                        onPressed: () {
                          print(messageController.text);
                          ChatBubble message = new ChatBubble(text: messageController.text, isCurrentUser: true);
                          setState(() => messages.add(message));
                        },

                        backgroundColor: Colors.greenAccent,
                        elevation: 0,
                        //),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  //ChatBubble({@required this.text,@required this.isCurrentUser});//,@required this.isMe});
  // TODO: Implement build method
  // @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      // add some padding
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.greenAccent : Colors.blueGrey[800],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: isCurrentUser ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
