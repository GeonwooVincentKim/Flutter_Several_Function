import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
radius_circular_with_border(){
  Container(
      height: 100.0,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.green,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0),
          ),
        ),
        child: new Center(
          child: new Text("Hi modal sheet"),
        )
      ),
  );
}

// ignore: non_constant_identifier_names

