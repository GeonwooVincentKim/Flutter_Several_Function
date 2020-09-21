import 'package:flutter/material.dart';

import '../../../widgets/expanded/widgets_attribute/details_expanded_widgets/expanded_widgets_details.dart';

// Image-Attributes that is below in the Detail-Page part.
class DetailBodyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 210,
      child: Column(
          children: <Widget>[
            Expanded(
              child: expanded_widgets_details_up_detail(),
            ),
          ]
      ),
    );
  }
}

// Progress-Bar-Attributes that is belows in the Detail-Page part.
class DetailsBodyProgressBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LinearProgressIndicator(
          minHeight: 10,
          backgroundColor: Colors.grey,
        ),
      ],
    );
  }

}

// Text-Attributes that is belows in the Detail-Page part.
class DetailBodyText extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Title
                expanded_widgets_details_up(),
              ],
            ),
          ],
        )
    );
  }
}

//
class DetailBodyVideo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 15.0),
      child: Column(
        children: <Widget>[
          expanded_widgets_details_down_detail(),
        ]
      ),
    );
  }

}