import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/settings.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/widgets/expanded/body_details.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              child: Text("Header"),
            ),
            ListTile(
              title: Text("Home-Page"),
              onTap: (){
                main();
              },
              // title: Text("Home"),
            ),
            ListTile(
              title: Text("Settings"),
              onTap: (){
                settings_main();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY GAMES"),
        centerTitle: true,
      ),
      body: Body(),
      // body: Body_Divide_Test(),
    );
  }
}

// Main Scene that shows Body part separately.
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var listUp = ["Title1", "Title2", "Title3"];
    var listDown = ["Title4", "Title5", "Title6", "Title7"];

    return Center(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // ...list_up.map((item) {
              //
              // }).toList(),
              Row(
                children: <Widget>[
                  // Import expanded_widgets class.
                  expanded_widgets_up(),
                ],
              ),
              divider(),
              // Import buttons that combined Image and Text.
              // For the codes that belows 'IN PROGRESS'.
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            transparent_divider(),
                        itemCount: listUp.length,
                        // itemBuilder: (context, index) => _buildBodyDetails(),
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
                  ),
                ]

              ),

              transparent_divider(),

              Row(
                children: <Widget>[
                  // Import expanded_widgets_down class.
                  expanded_widgets_down(),
                ],
              ),
              divider(),

              // For the codes that belows 'COMPILED'.
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          new Divider(
                            color: Colors.transparent,
                          ),
                        shrinkWrap: true,
                        itemCount: listDown.length,
                        itemBuilder: (context, index) => listview_separated_down()
                    ),
                  ),
                ]
              ),

            ],
          ),
        ),

      ),
      // onTap: (){
      //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
      // },
    );
    //   },
    // );
  }
}
