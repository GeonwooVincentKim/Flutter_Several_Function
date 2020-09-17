import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My Flutter App",
      home: DiscoverPage(),
    )
  );
}


class DiscoverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text("DISCOVER"),
        ),
      ),
      body: DiscoverBody(),
    );
  }
}


class DiscoverBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Text("Test")
          ]
        ),
      ),
    );
  }
}