import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/discover/discover_attributes/discover_body.dart';
import 'package:flutter_app/app_screens/main/Body.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/SideMenu.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';


class Home extends StatefulWidget{
  final String title;

  Home({Key key, this.title}) : super(key: key);
  @override 
  State<StatefulWidget> createState()
    => _HomeState();
}

class _HomeState extends State<Home>{
  int _selectedPage = 0;
  List<Widget> pageList = List<Widget>();

  String _title;

  @override
  void initState() {
    pageList.add(Body());
    pageList.add(Discover());
    _title = 'My Flutter';
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY GAMES"),
        // title: Text(_title),
        // title: Text(widget.title),
        centerTitle: true,
      ),
      // body: Body(),
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        iconSize: 50,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconMoon.igamepad),
            title: Text('My Games'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconMoon.isearch),
            title: Text('Discover'),
          ),
        ],
        //currentIndex: _selectedIndex,
        // selectedFontSize: 15,
        currentIndex: _selectedPage,
        backgroundColor: Colors.black87,
      ),
      // body: Body_Divide_Test(),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
      switch(index){
        case 0: {_title="Hello World";}
        break;
        case 1: {_title="Bye World";}
        break;
      }
    });
  }
}

