import 'package:flutter/material.dart';

// ignore: camel_case_types
class expanded_widgets_align_text extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              // padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Title',
                textScaleFactor: 2,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "icomoon",
                  fontSize: 12,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Platform: PS4 | Genre : RPG",
                style: TextStyle(
                  color: Colors.black26,
                  fontFamily: "icomoon",
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Progression: 50%",
                style: TextStyle(
                  color: Colors.black26,
                  fontFamily: "icomoon",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ignore: non_constant_identifier_names
expanded_widgets_text_style(){
  return TextStyle(
      decoration: TextDecoration.none,
      fontSize: 25.0,
      fontFamily: "icomoon",
      fontWeight: FontWeight.w700,
      color: Colors.black87
  );
}
