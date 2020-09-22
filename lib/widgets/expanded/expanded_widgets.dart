import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/widget_detail.dart';

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
        style: WidgetTextStyle(),
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
        style: WidgetTextStyle(),
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
          image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
          fit: BoxFit.fitHeight
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
          image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
          fit: BoxFit.fitHeight
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
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: WidgetTextAlign(),
      ),
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
      child: WidgetTextAlign(),
    );
  }
}
