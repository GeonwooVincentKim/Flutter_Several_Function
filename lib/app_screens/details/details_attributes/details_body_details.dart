import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/widget_details.dart';


// Image-Attributes that is below in the Detail-Page part.
class DetailBodyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 210,
      child: Column(
          children: <Widget>[
            Expanded(
              child: DetailsImage(),
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
          value: 0.8,
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
        // padding: EdgeInsets.only(left: 10.0, top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Title
                DetailsText(),
              ],
            ),
          ],
        )
    );
  }
}

// Video-Attributes that is belows in the Detail-Page part.
class DetailBodyVideo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 15.0),
      child: Column(
        children: <Widget>[
          DetailsVideo(),
        ]
      ),
    );
  }

}