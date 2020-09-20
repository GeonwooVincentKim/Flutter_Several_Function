import 'package:flutter/material.dart';

import 'expanded_widgets.dart';

// ignore: camel_case_types
class listview_separated_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 70,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              // For Top-part Widgets, the Main
              child: expanded_widgets_front_detail()
          ),

          Expanded(
              flex: 3,
              // For Below-part Widgets, the Main
              child: expanded_widgets_behind_detail()
          )
        ],
      ),
    );
  }

}


// ignore: camel_case_types
class listview_separated_down extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 70,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              // For Top-part Widgets, the Main
              child: expanded_widgets_left_detail()
          ),

          Expanded(
              flex: 3,
              // For Below-part Widgets, the Main
              child: expanded_widgets_right_detail()
          )
        ],
      ),
    );
  }
}