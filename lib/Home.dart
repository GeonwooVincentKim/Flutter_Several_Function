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