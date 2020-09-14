import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "MY GAMES",
          ),
        ),
      ),
      body: Body(),
    );
  }
}

// Main Scene that shows Body part separately.
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 40.0)
            ),
            Text(
              "Hi User",
              textDirection: TextDirection.rtl,
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ]
        )
      ),
    );
  }
}