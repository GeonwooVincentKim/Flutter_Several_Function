import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/body_details.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

// ignore: non_constant_identifier_names
class MainList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var listUp = ["Title1", "Title2", "Title3"];
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              transparent_divider(),
          itemCount: listUp.length,
          itemBuilder: (context, index) {
            final item = listUp[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 67,
                child: Dismissible(
                    key: Key(item),
                    onDismissed: (direction) {
                      // setState(() {
                      //   listUp.removeAt(index);
                      // });
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content:
                          Text("$item dismissed")
                          )
                      );
                    },
                    background: Container(
                      color: Colors.amber,
                      alignment: Alignment(-0.9, 0.0),
                      child: Icon(IconMoon.ipencil, color: Colors.white, size: 30.0,),
                    ),
                    secondaryBackground: Container(
                      color: Colors.green,
                      alignment: Alignment(0.9, 0.0),
                      child: Icon(IconMoon.icheck2, color: Colors.white, size: 30.0,),
                    ),
                    child: listview_separated_up()
                ),
              ),

            );
          }
      ),
    );
  }
}
