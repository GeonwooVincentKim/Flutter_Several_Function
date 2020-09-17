import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

class DiscoverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text("DISCOVER"),
        ),
      ),
      body: DiscoverBody(),
    );
  }
}


class DiscoverBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var itemList = [
      "Title_Details_1", "Title_Details_2", "Title_Details_3"
    ];
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        transparent_divider(),
                    itemCount: itemList.length,
                    itemBuilder: (context, index) => _buildDiscoverBodyDetails()
                  )
              ),

              divider(),
            ]
        ),
      ),
    );
  }

  Widget _buildDiscoverBodyDetails(){

  }
}


class DiscoverBodyDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 150,
      child: Column(
        children: [
          Expanded(
            flex: 1,

          ),
        ],
      ),
    );
  }
}