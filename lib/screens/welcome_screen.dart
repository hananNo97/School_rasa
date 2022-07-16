import 'package:flutter/material.dart';

//import 'package:school/avd.dart';

// import 'package:/constants.dart';

//import 'package:school/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'package:hello_world/widgets/bottom_navigation.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
            ),
            Center(
              child: Image.asset('assets/icons/grad_cap.png'),
            ),
            Positioned(
              top: 100.0,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: <Widget>[
                  // ClipRRect(
                  //   //child: Image.network(// <-- SEE HERE
                  //   //'https://images.app.goo.gl/NKuggfQ7QzAb4mLg8',
                  //   //'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn0.iconfinder.com%2Fdata%2Ficons%2Fback-to-school-84%2F64%2F09-Graduation_Cap-512.png&imgrefurl=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F6457307%2Fgraduate_graduation_graduation_cap_icon&tbnid=O0q00MmoS2oMWM&vet=10CBQQMyhrahcKEwiIr-v0pdX4AhUAAAAAHQAAAAAQEQ..i&docid=gRKzqyV0AoYUSM&w=512&h=512&q=grad%20cap%20green%20icon&hl=ar&ved=0CBQQMyhrahcKEwiIr-v0pdX4AhUAAAAAHQAAAAAQEQ'),
                  //   child: Image.asset('assets/icons/grad_cap.png'),
                  //   //  child: SvgPicture.asset(
                  //   //    "assets/icons/grad_cap.png",
                  //   //    height: 180.0,
                  //   //    width: 180.0,
                  //   //  ),
                  // ),
                  Text(
                    "GoSchool",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 170.0,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Check your assignments, and exams dates in no time on the go!",
                    style: TextStyle(
                      //color: kTextColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 130,
              left: 100.0,
              right: 100.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BottomNavigation()),
                  );
                },
                child: Container(
                  width: 150.0,
                  height: 55.0,
                  padding: EdgeInsets.only(left: 40.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "GET STARTED",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      // Icon(
                      //   Icons.keyboard_arrow_right,
                      //   color: Colors.white,
                      //   size: 28.0,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
