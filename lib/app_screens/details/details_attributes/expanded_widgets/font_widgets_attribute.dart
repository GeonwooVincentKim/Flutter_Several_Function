import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

// Text-font attributes for 'Main-Text' of 'details-page'.
// ignore: camel_case_types
class expanded_widgets_main_font extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "TITLE",
        textDirection: ui.TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 25.0,
            fontFamily: "icomoon",
            fontWeight: FontWeight.w700,
            color: Colors.black87
        ),
      ),
    );
  }
}

// Text-font attributes for 'Sub-Text' of 'details-page'.
// ignore: cameL_case_types
class expanded_widgets_sub_font_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 17,
                  fontFamily: "icomoon",
                  fontWeight: FontWeight.w700,
                  color: Colors.black87
              ),
              children: <TextSpan>[
                TextSpan(text: "Platform: "),
                TextSpan(text: "PS4", style: TextStyle(color: Colors.black26, fontFamily: "icomoon", fontWeight: FontWeight.w100)),
                TextSpan(text: " | Genre: "),
                TextSpan(text: "RPG", style: TextStyle(color: Colors.black26, fontFamily: "icomoon", fontWeight: FontWeight.w100)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_sub_font_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 17,
                  fontFamily: "icomoon",
                  fontWeight: FontWeight.w700,
                  color: Colors.black87
              ),
              children: <TextSpan>[
                TextSpan(text: "Progressions: "),
                TextSpan(text: "80%", style: TextStyle(color: Colors.black26, fontFamily: "icomoon", fontWeight: FontWeight.w100)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_sub_font_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 17,
                  fontFamily: "icomoon",
                  fontWeight: FontWeight.w700,
                  color: Colors.black87
              ),
              children: <TextSpan>[
                TextSpan(text: "Editor: "),
                TextSpan(text: "Editor Name", style: TextStyle(color: Colors.black26, fontFamily: "icomoon", fontWeight: FontWeight.w100)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_sub_font_4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 17,
                  fontFamily: "icomoon",
                  fontWeight: FontWeight.w700,
                  color: Colors.black87
              ),
              children: <TextSpan>[
                TextSpan(text: "ReleaseDate: "),
                TextSpan(text: "Editor Name", style: TextStyle(color: Colors.black26, fontFamily: "icomoon", fontWeight: FontWeight.w100)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}