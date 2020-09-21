import 'package:flutter/material.dart';

import '../../../main.dart';
import '../settings.dart';

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
                    image: AssetImage(""),
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
              // _buildDetailsBodyImage(),

              // I should convert as CircularProgressIndicator function.
              // _buildDetailsBodyProgressBar(),
              Center(
                // child: _buildDetailBodyText(),
              ),
              Center(
                // child: _buildDetailBodyVideo(),
              ),
            ],
          ),
        ),

      ),
    );
  }
}