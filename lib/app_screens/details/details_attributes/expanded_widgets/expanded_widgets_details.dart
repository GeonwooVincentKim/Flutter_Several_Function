import 'package:flutter/material.dart';

// ignore: camel_case_types
class expanded_widgets_details_up_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      child: FittedBox(
        child: Image(
            image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg")
        ),
        fit: BoxFit.fill,
      ),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_details_down_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     "Text",
          //     textScaleFactor: 2,
          //     textDirection: TextDirection.ltr,
          //     textAlign: TextAlign.left,
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontFamily: "icomoon",
          //       fontSize: 20,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}