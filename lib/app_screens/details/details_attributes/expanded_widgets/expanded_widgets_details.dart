import 'package:flutter/material.dart';

// ignore: camel_case_types
class expanded_widgets_details_up_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image(
          image: NetworkImage("https://www.gstatic.com/wedp/gallery/1.jpg")
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_details_down_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Text",

                ),
              ),
            ],
          ),
        ],
      ))
    );
  }
}