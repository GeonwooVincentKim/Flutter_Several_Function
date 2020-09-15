import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names, camel_case_types
class expanded_widgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        "IN PROGRESS",
        textDirection: TextDirection.ltr,
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
