import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';

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
            _buildBodyDetails(),
            // Body_Details(),
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

  Widget _buildBodyDetails(){
    var list = ["Title1", "Title2", "Title3", "Title4", "Title5", "Title6"];
    return Expanded (
      child: Body_Details(),
    );
  }
}


// ignore: camel_case_types
class Body_Details extends StatelessWidget{
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
                child: expanded_widgets_up_detail()
            ),
            Expanded(
                flex: 3,
                child: expanded_widgets_down_detail()
            )
          ],
        ),
    );
  }
}
