import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/discover/discover_attributes/discover_body.dart';
import 'package:flutter_app/app_screens/main/Body.dart';
import 'package:flutter_app/app_screens/settings/SideMenu.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/widgets/expanded/body_details.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';


class Home extends StatefulWidget{
  final String title;

  Home({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState()
    => _HomeState();
}

class _HomeState extends State<Home>{
  String _title;
  int _selectedPage = 0;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(Body());
    pageList.add(DiscoverPage());
    _title = "Hello World";
    super.initState();
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView(){
    return PageView(
      controller: pageController,
      onPageChanged: (index){
        pageChanged(index);
      },
      children: <Widget>[
        Body(),
        DiscoverPage(),
      ]
    );
  }

  void pageChanged(int index){
    setState((){
      _selectedPage = index;
    });
  }

  void bottomTapped(int index){
    setState((){
      _selectedPage = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void onAddButtonTapped(int index){
    pageController.animateToPage(index);
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(_title),
        // title: Text(_title),
        // title: Text(widget.title),
        centerTitle: true,
      ),
      // body: Body(),
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => Discover()),
      //       );
      //     },
      //   ),
      // ),
      // body: buildPageView(),
      // body: PageView(
      //   pageSnapping: true,
      //   // controller: controller,
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Body(),
      //     DiscoverPage(),
      //     // Container(color: Colors.indigo),
      //     // Container(color: Colors.red,),
      //     IndexedStack(
      //       index: _selectedPage,
      //       children: pageList,
      //     ),
      //   ],
      // ),
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
        case 0: {
          //Navigator.pushNamed(context, '/home');
          _title="MY GAMES";
          break;
        }
        case 1:{
          // Navigator.pushNamed(context, '/discover');
          _title="DISCOVER";
          break;
        }
      }
    });
  }

}