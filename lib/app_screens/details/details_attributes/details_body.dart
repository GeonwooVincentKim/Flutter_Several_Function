import 'package:flutter/material.dart';
import 'details_body_details.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildDetailsBodyImage(),

              // I should convert as CircularProgressIndicator function.
              _buildDetailsBodyProgressBar(),
              Center(
                child: _buildDetailBodyText(),
              )
            ],
          ),
        ),

      ),
    );
  }

  Widget _buildDetailsBodyImage(){
    return DetailBodyImage();
  }

  Widget _buildDetailsBodyProgressBar(){
    return DetailsBodyProgressBar();
  }

  Widget _buildDetailBodyText(){
    return DetailBodyText();
  }
}


