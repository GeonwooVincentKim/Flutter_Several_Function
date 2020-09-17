import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';

import 'expanded_widgets/expanded_widgets_details.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "GAME TITLE",
          ),
        ),
      ),
      body: DetailBody(),
    );
  }
}


class DetailBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            _buildDetailsBodyDetails(),
            // I should convert as CircularProgressIndicator function.
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LinearProgressIndicator(
                    minHeight: 10,
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Text("Test"),
                expanded_widgets_details_down_detail(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsBodyDetails(){
    return DetailBodyDetails();
  }
}


class DetailBodyDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 230,
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