import 'package:flutter/material.dart';

// ignore: camel_case_types
class divider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      height: 40,
    );
  }
}


class transparent_divider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.transparent,
    );
  }
}