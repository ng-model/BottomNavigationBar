import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // backgroundColor: Colors.green,
      body: new Container(
        child: new Center(
          child: new Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Under Construction", style: TextStyle(fontSize: 20.0),),
              new Icon(
                Icons.portable_wifi_off,
                size: 160.0,
                color: Colors.grey[300],
              ),
              // new Text(
              //   "Second Tab",
              //   style: new TextStyle(color: Colors.white),
              // )
            ],
          ),
        ),
      ),
    );
  }
}