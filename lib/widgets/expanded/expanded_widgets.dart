import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names, camel_case_types
class expanded_widgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        "IN PROGRESS",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 25.0,
            fontFamily: "icomoon",
            fontWeight: FontWeight.w700,
            color: Colors.black87
        ),
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
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 25.0,
            fontFamily: "icomoon",
            fontWeight: FontWeight.w700,
            color: Colors.black87
        ),
      ),
    );
  }
  
}


// ignore: camel_case_types
class expanded_widgets_up_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Image.asset(
      //     "images/hummingbird.png"
      // ),
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
class expanded_widgets_down_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(left: 10.0, top: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        color: Colors.black12,
      ),
      child: (Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                // padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Title',
                  textScaleFactor: 2,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "icomoon",
                    fontSize: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Platform: PS4 | Genre : RPG",
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "icomoon",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Progression: 50%",
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "icomoon",
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}