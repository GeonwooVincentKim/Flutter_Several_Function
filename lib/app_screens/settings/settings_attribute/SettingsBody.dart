import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/settings.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/SettingText.dart';
import 'file:///E:/flutter_test_project/flutter_app/lib/app_screens/settings/SideMenu.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'SettingImage.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("SETTINGS"),
        centerTitle: true,
      ),
      body: SettingsBody(),
      // body: Body_Divide_Test(),
    );
  }
}


class SettingsBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: ImageAttribute(),
              ),
              transparent_divider(),
              Text(
                "John Doe",
                textScaleFactor: 1.5,
              ),
              Center(
                child: TextAttribute(),
              ),
            ],
          ),
        ),

      ),
    );
    // return Center(
    //     // child: Column(
    //     //   crossAxisAlignment: CrossAxisAlignment.center,
    //     //   mainAxisAlignment: MainAxisAlignment.center,
    //     //   children: <Widget>[
    //         child: Container(
    //           width: 90,
    //           height: 90,
    //           decoration: new BoxDecoration(
    //             shape: BoxShape.circle,
    //             image: DecorationImage(
    //               fit: BoxFit.fill,
    //               image: NetworkImage(
    //                   'https://i.pinimg.com/originals/c2/47/e9/c247e913a0214313045a8a5c39f8522b.jpg'
    //               )
    //             ),
    //           )
    //         ),
    //     //   ]
    //     // ),
    // );
    return Center(
      child: SingleChildScrollView(
        // padding: EdgeInsets.all(30.0),
        padding: EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 58.0,
              child: Text('Travel'),
            ),
            // SizedBox(
            //   height: 20.0,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(
            //       prefixIcon: Icon(
            //         Icons.person,
            //         color: Colors.white,
            //       ),
            //       hintStyle: TextStyle(color: Colors.white),
            //       filled: true,
            //       fillColor: Colors.black45,
            //       hintText: 'Username'),
            // ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(
            //       filled: true,
            //       prefixIcon: Icon(Icons.lock, color: Colors.white),
            //       hintStyle: TextStyle(color: Colors.white),
            //       fillColor: Colors.black45,
            //       hintText: 'Password'),
            // ),
            // SizedBox(
            //   height: 15.0,
            // ),
            // FlatButton(
            //     onPressed: () {},
            //     child: Text(
            //       'Forgot your Password?',
            //       style: TextStyle(color: Colors.white),
            //     )),
            // SizedBox(
            //   height: 15.0,
            // ),
            // RaisedButton(
            //   onPressed: () {},
            //   child: Padding(
            //       padding: EdgeInsets.all(15.0),
            //       child: Text('LOGIN')),
            //   color: Colors.redAccent,
            //   textColor: Colors.white,
            // ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // RaisedButton(
            //   onPressed: () {},
            //   child: Padding(
            //       padding: EdgeInsets.all(15.0),
            //       child: Text('REGISTER')),
            //   color: Colors.grey,
            //   textColor: Colors.white,
            // ),
            // SizedBox(
            //   height: 12.0,
            // ),
            // Row(
            //   children: <Widget>[
            //     Expanded(
            //       child: Divider(
            //         color: Colors.white,
            //         height: 8.0,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 8.0,
            //     ),
            //     Text(
            //       'OR',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     SizedBox(
            //       width: 8.0,
            //     ),
            //     Expanded(
            //       child: Divider(
            //         color: Colors.white,
            //         height: 8.0,
            //       ),
            //     )
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     // TODO Social Icons
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}