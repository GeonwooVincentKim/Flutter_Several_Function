import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

import 'font_widgets_attribute.dart';


// For Text-font of 'details-page'.
// ignore: camel_case_types
class expanded_widgets_details_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          expanded_widgets_main_font(),
          transparent_divider(),
          expanded_widgets_sub_font_1(),
          transparent_divider(),
          expanded_widgets_sub_font_2(),
          transparent_divider(),
          expanded_widgets_sub_font_3(),
          transparent_divider(),
          expanded_widgets_sub_font_4(),
          transparent_divider(),
          expanded_widgets_sub_font_5(),
          transparent_divider(),

        ],
      )
    );
  }
}


// For Image of 'details-page'.
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

// For Video of 'details-page'.
// ignore: camel_case_types
class expanded_widgets_details_down_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}