import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _userHomeState();
}

class _userHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black,
              height: 45,
              child: Center(
                  child: Text(
                "User panel",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      )),
    );
  }
}
