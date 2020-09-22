import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/main/Body.dart';
import 'file:///E:/flutter_test_project/flutter_app/lib/app_screens/settings/SideMenu.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/widget_discover.dart';

// class Discover extends StatefulWidget{
//   Discover({Key key, this.title}): super(key: key);
//   final String title;
//   @override
//   State<StatefulWidget> createState()
//     => _DiscoverState();
// }
//
// class _DiscoverState extends State<Discover>{
//   int _selectedPage = 0;
//   List<Widget> pageList = List<Widget>();
//   String _title;
//
//   @override
//   void initState() {
//     pageList.add(Body());
//     pageList.add(Discover());
//     _title = 'My Flutter';
//     print(_title);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: SideMenu(),
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         title: Text("tEXT"),
//         centerTitle: true,
//       ),
//       // body: Body(),
//       body: IndexedStack(
//         index: _selectedPage,
//         children: pageList,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedPage,
//         backgroundColor: Colors.black87,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         onTap: _onItemTapped,
//         iconSize: 50,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(IconMoon.igamepad),
//             title: Text('My Games'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(IconMoon.isearch),
//             title: Text('Discover'),
//           ),
//         ],
//         //currentIndex: _selectedIndex,
//         // selectedFontSize: 15,
//       ),
//       // body: Body_Divide_Test(),
//     );
//   }
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedPage = index;
//     });
//   }
// }

class DiscoverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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