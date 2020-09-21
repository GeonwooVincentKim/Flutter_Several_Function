import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/widget_discover.dart';

class DiscoverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("DISCOVER"),
        centerTitle: true,
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
        padding: EdgeInsets.only(right: 5.0, top: 20.0),
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
                    itemBuilder: (context, index) => DiscoverBodyDetails()
                  )
              ),
            ]
        ),
      ),
    );
  }
}


class DiscoverBodyDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 220,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: DiscoverUp(),
          ),
          Expanded(
            flex: 1,
            child: DiscoverDown(),
          ),
        ],
      ),
    );
  }
}