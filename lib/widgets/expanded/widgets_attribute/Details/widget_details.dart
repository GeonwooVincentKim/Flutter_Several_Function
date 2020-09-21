import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

import 'entertainment/video_attributes.dart';
import 'font_style/FontWidget.dart';


// For Text-font of 'details-page'.
// ignore: camel_case_types
class DetailsText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          MainFont(),
          transparent_divider(),
          SubFont1(),
          transparent_divider(),
          SubFont2(),
          transparent_divider(),
          SubFont3(),
          transparent_divider(),
          SubFont4(),
          transparent_divider(),
          SubFont5(),
          transparent_divider(),
          SubFont6(),
          transparent_divider(),
          // expanded_widgets_details_down_detail(),
        ],
      )
    );
  }
}


// For Image of 'details-page'.
// ignore: camel_case_types
class DetailsImage extends StatelessWidget{
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
class DetailsVideo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: FractionalOffset.bottomRight +
                const FractionalOffset(-0.1, -0.1),
            children: <Widget>[
              Video(),
              // Image.asset('assets/flutter-mark-square-64.png'),
            ]),
          // expanded_video_player(),
        ],
      ),
    );
  }
}