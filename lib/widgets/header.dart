import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Image.network(// <-- SEE HERE

          //     //'https://images.app.goo.gl/NKuggfQ7QzAb4mLg8',
          //     'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn0.iconfinder.com%2Fdata%2Ficons%2Fback-to-school-84%2F64%2F09-Graduation_Cap-512.png&imgrefurl=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F6457307%2Fgraduate_graduation_graduation_cap_icon&tbnid=O0q00MmoS2oMWM&vet=10CBQQMyhrahcKEwiIr-v0pdX4AhUAAAAAHQAAAAAQEQ..i&docid=gRKzqyV0AoYUSM&w=512&h=512&q=grad%20cap%20green%20icon&hl=ar&ved=0CBQQMyhrahcKEwiIr-v0pdX4AhUAAAAAHQAAAAAQEQ'),
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage("assets/icons/grad_APP.png"),
          ),
          Text(
            "My School",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          
        ],
      ),
    );
  }
}
