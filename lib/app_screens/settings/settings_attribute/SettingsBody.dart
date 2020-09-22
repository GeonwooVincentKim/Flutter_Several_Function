import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/settings.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/SideMenu.dart';
import 'package:flutter_app/main.dart';
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
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: SettingImage(),
              ),
              // Center(
              //   child: SettingText(),
              // ),
            ],
          ),
        ),

      ),
    );
  }

  // Widget _buildSettingBodyImage(){
  //   // return SettingBodyText();
  //   return Text("You're World");
  // }
  //
  // Widget _buildSettingBodyText(){
  //   return Text("You're World");
  // }
}