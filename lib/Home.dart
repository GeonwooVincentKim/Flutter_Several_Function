import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "MY GAMES",
          ),
        ),
      ),
      body: Body(),
    );
  }
}

// Main Scene that shows Body part separately.
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Korean-Air",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87
                    ),
                  ),
                ),

              ],
            ),
            const Divider(
              color: Colors.black,
              height: 40,
            ),

            Container(
                // padding: EdgeInsets.only(left: 9.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 70,
                child:Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child:
                        Container(
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
                          // child: Image(
                          //   image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
                          // ),
                          // height: 70,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(10.0),
                          //       bottomLeft: Radius.circular(10.0)),
                          //   color: Colors.black26,
                          // ),
                        ) ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Colors.amber,
                        ),
                        child: (Row(
                          children: <Widget>[
                            Text(
                              'This is a Container',
                              textScaleFactor: 2,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                              ),
                            ),
                          ],
                        )),
                      ),
                    )
                  ],)),
            const Divider(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Korean-Air",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              height: 40,
            ),
          ],
        ),
      )

    );
  }
}


test(){
  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 70,
      child:Row(
        children: [
          Expanded(
              flex: 1,
              child:
              Container(
                child: Image.asset(
                    "images/hummingbird.png"
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  color: Colors.black26,
                ),
              ) ),
          Expanded(
            flex: 3,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.amber,
              ),
              child: (Row(
                children: <Widget>[
                  Text(

                    'This is a Container',
                    textScaleFactor: 2,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
            ),
          )
        ],));
}
