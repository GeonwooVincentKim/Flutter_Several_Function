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
              // height: 100.0,
              // color: Colors.transparent,
              // child: new Container(
              //     decoration: new BoxDecoration(
              //         color: Colors.green,
              //         borderRadius: new BorderRadius.only(
              //           topLeft: const Radius.circular(20.0),
              //           topRight: const Radius.circular(20.0),
              //           bottomLeft: const Radius.circular(20.0),
              //           bottomRight: const Radius.circular(20.0),
              //         )
              //     ),
              //     child: new Center(
              //       child: new Text("Hi modal sheet"),
              //     )
              // ),
              padding: EdgeInsets.only(left: 120.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.green,
              ),
              height: 70,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  color: Colors.white,
                ),
                child: Text(
                  'This is a Container',
                  textScaleFactor: 2,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
           // Center(
              // child: ClipRect(
              //   child: Align(
              //     alignment: Alignment.topCenter,
              //     heightFactor: 0.5,
              //     child: Image.network("https://www.gstatic.com/webp/gallery/1.jpg"),
              //   ),

              //   Container(
              //     alignment: Alignment.topLeft,
              //     color: Colors.transparent,
              //     child: Column(
              //       children: <Widget>[
              //         Row(
              //           children: <Widget>[
              //             Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Image(
              //                 height: 100,
              //                 width: 100,
              //                 image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
              //               ),
              //             ),
              //             Column(
              //               children: <Widget>[
              //                 Text(
              //                   "Title",
              //                   textDirection: TextDirection.ltr,
              //                   textAlign: TextAlign.left,
              //                   style: TextStyle(
              //                     fontSize: 20,
              //                   ),
              //                 ),
              //                 Text("Author name"),
              //
              //                 Divider(
              //                   color: Colors.black,
              //                 )
              //               ],
              //             )
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),

             // )
            // ),

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
    // return Center(
    //   child: Column(
    //     children: <Widget>[
    //       Expanded(
    //         child: Container(
    //           color: Colors.amber,
    //           child: const Center(
    //             child: Text('Above'),
    //           ),
    //         ),
    //       ),
    //       const Divider(
    //         color: Colors.black,
    //         height: 20,
    //         thickness: 5,
    //         indent: 20,
    //         endIndent: 0,
    //       ),
    //       Expanded(
    //         child: Container(
    //           color: Colors.blue,
    //           child: const Center(
    //             child: Text('Below'),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}