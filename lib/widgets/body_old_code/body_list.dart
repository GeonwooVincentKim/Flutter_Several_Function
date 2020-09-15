import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/Home.dart';

import '../expanded/divider.dart';
import '../expanded/expanded_widgets.dart';

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
                // Import expanded_widgets class.
                expanded_widgets(),
              ],
            ),
            divider(),
            // Import buttons that combined Image and Text.
            Body_Details(),
            SizedBox(height: 15),
            Body_Details(),
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                // Import expanded_widgets_down class.
                expanded_widgets_down(),
              ],
            ),
            divider(),
            Body_Details(),
            SizedBox(height: 15),
            Body_Details(),
            SizedBox(height: 15),
            Body_Details(),
            SizedBox(height: 15),
            Body_Details(),
          ],
        ),
      ),
      // onTap: (){
      //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
      // },
    );
  }
}