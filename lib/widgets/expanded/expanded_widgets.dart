import 'package:flutter/material.dart';

import '../../app_screens/Home.dart';
import '../../shared/helpers/icomoon.dart';
import 'divider.dart';
import 'expanded_widgets_detail.dart';

/*
  Text-Attributes for Main
  1. expanded_widgets_up
  2. expanded_widgets_down
*/
// ignore: non_constant_identifier_names, camel_case_types
class expanded_widgets_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        "IN PROGRESS",
        textDirection: TextDirection.ltr,
        style: expanded_widgets_text_style(),
      ),
    );
  }
}


// ignore: camel_case_types
class expanded_widgets_down extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        "COMPLETED",
        textDirection: TextDirection.ltr,
        style: expanded_widgets_text_style(),
      ),
    );
  }
  
}

/*
  Image-Attributes for Main
  1. expanded_widgets_up_detail
  2. expanded_widgets_down_detail
*/
// ignore: camel_case_types
class expanded_widgets_left_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
        ),
        child: Image(
            image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg")
        ),
      ),
    );
  }
}


// ignore: camel_case_types
class expanded_widgets_front_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image(
            image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg")
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_behind_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      padding: EdgeInsets.only(left: 10.0, top: 5.0),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: expanded_widgets_align_text(),
    );
  }
}

// ignore: camel_case_types
class expanded_widgets_right_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      padding: EdgeInsets.only(left: 10.0, top: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        color: Colors.black12,
      ),
      child: expanded_widgets_align_text(),
    );
  }
}
