import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/settings.dart';
import 'package:flutter_app/main.dart';
import 'settings_body_details.dart';

class SettingsPage extends StatelessWidget{
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
                child: _buildSettingBodyImage(),
              ),
              Center(
                child: _buildSettingBodyText(),
              ),
            ],
          ),
        ),

      ),
    );
  }

  Widget _buildSettingBodyImage(){
    // return SettingBodyText();
    return Text("You're World");
  }

  Widget _buildSettingBodyText(){
    return Text("You're World");
  }
}