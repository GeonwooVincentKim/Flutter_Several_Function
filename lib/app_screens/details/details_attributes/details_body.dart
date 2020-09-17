import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "GAME TITLE",
          ),
        ),
      ),
      body: DetailBody(),
    );
  }
}


class DetailBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Text("Test"),
            Text("Test"),
          ],
        ),
        // child: Column(
        //   children: <Widget>[
        //     Row(
        //       children: <Widget>[
        //         expanded_widgets_up(),
        //       ],
        //     )
        //   ],
        // ),
      ),
    );
  }
}