import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';


// For Text-font of 'details-page'.
// ignore: camel_case_types
class expanded_widgets_details_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "TITLE",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 25.0,
                  fontFamily: "icomoon",
                  fontWeight: FontWeight.w700,
                  color: Colors.black87
              ),
            ),
          ),
          transparent_divider(),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                Text(
                  "Platform: ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "icomoon",
                      fontWeight: FontWeight.w700,
                      color: Colors.black87
                  ),
                ),
                Text(
                  "PS4",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "icomoon",
                  ),
                ),
                Text(
                  " | Genre: ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "icomoon",
                      fontWeight: FontWeight.w700,
                      color: Colors.black87
                  ),
                ),
                Text(
                  "RPG",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "icomoon",
                  ),
                ),
              ],
            ),
          ),
          transparent_divider(),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                Text(
                  "Platform: ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "icomoon",
                      fontWeight: FontWeight.w700,
                      color: Colors.black87
                  ),
                ),
                Text(
                  "PS4",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "icomoon",
                  ),
                ),
                Text(
                  " | Genre: ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "icomoon",
                      fontWeight: FontWeight.w700,
                      color: Colors.black87
                  ),
                ),
                Text(
                  "RPG",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "icomoon",
                  ),
                ),
              ],
            ),
          ),
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

// ignore: camel_case_types
class expanded_widgets_details_down_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     "Text",
          //     textScaleFactor: 2,
          //     textDirection: TextDirection.ltr,
          //     textAlign: TextAlign.left,
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontFamily: "icomoon",
          //       fontSize: 20,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}