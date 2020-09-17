import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemList = [
      "IN_PROGRESS", "Title1", "Title2", "Title3",
      "COMPLETED", "Title4", "Title5", "Title6",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "MY GAMES",
          ),
        ),
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
    var itemList = [
      "IN_PROGRESS", "Line", "Title1", "Title2", "Title3",
      "COMPLETED", "Title4", "Title5", "Title6",
    ];
    var list_up = ["Title1", "Title2", "Title3"];
    var list_down = ["Title4", "Title5", "Title6", "Title7", "Title8", "Title9", "Title10", "Title10", "Title10", ];

    // return Expanded(
    //     child: Center(
    //       child: Container(
    //         height: 80,
    //         width: 100,
    //         padding: EdgeInsets.only(left: 10.0, top: 20.0),
    //         alignment: Alignment.topLeft,
    //         color: Colors.black12,
    //         child: Column(
    //           children: <Widget>[
    //             // ...list_up.map((item) {
    //             //
    //             // }).toList(),
    //             Row(
    //               children: <Widget>[
    //                 // Import expanded_widgets class.
    //                 expanded_widgets(),
    //               ],
    //             ),
    //             divider(),
    //             // Import buttons that combined Image and Text.
    //             // For the codes that belows 'IN PROGRESS'.
    //             Expanded(
    //               child: ListView.separated(
    //                   separatorBuilder: (context, index) => Divider(
    //                     color: Colors.transparent,
    //                   ),
    //                   itemCount: list_up.length,
    //                   itemBuilder: (context, index) => _buildBodyDetails()
    //               ),
    //             ),
    //             Row(
    //               children: <Widget>[
    //                 // Import expanded_widgets_down class.
    //                 expanded_widgets_down(),
    //               ],
    //             ),
    //             divider(),
    //
    //             // For the codes that belows 'COMPILED'.
    //             Expanded(
    //               child: ListView.separated(
    //                   separatorBuilder: (context, index) => Divider(
    //                     color: Colors.transparent,
    //                   ),
    //                   itemCount: list_down.length,
    //                   itemBuilder: (context, index) => _buildBodyDetails()
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       // onTap: (){
    //       //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
    //       // },
    //     ),
    // );
    return LayoutBuilder(
      builder: (context, constraint) {
        return Center(
          child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 20.0),
            alignment: Alignment.topLeft,
            color: Colors.black12,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // ...list_up.map((item) {
                  //
                  // }).toList(),
                  Row(
                    children: <Widget>[
                      // Import expanded_widgets class.
                      expanded_widgets(),
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
                                Divider(
                                  color: Colors.transparent,
                                ),
                            itemCount: list_up.length,
                            itemBuilder: (context, index) => _buildBodyDetails()
                        ),
                      ),
                    ]

                  ),

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
                            itemCount: list_down.length,
                            itemBuilder: (context, index) => _buildBodyDetails()
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
      },
    );
    // return Center(
    //   child: Container(
    //     padding: EdgeInsets.only(left: 10.0, top: 20.0),
    //     alignment: Alignment.topLeft,
    //     color: Colors.black12,
    //     child: SingleChildScrollView(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: <Widget>[
    //           // ...list_up.map((item) {
    //           //
    //           // }).toList(),
    //           Row(
    //             children: <Widget>[
    //               // Import expanded_widgets class.
    //               expanded_widgets(),
    //             ],
    //           ),
    //           divider(),
    //           // Import buttons that combined Image and Text.
    //           // For the codes that belows 'IN PROGRESS'.
    //           Expanded(
    //             child: ListView.separated(
    //                 separatorBuilder: (context, index) => Divider(
    //                   color: Colors.transparent,
    //                 ),
    //                 itemCount: list_up.length,
    //                 itemBuilder: (context, index) => _buildBodyDetails()
    //             ),
    //           ),
    //           Row(
    //             children: <Widget>[
    //               // Import expanded_widgets_down class.
    //               expanded_widgets_down(),
    //             ],
    //           ),
    //           divider(),
    //
    //           // For the codes that belows 'COMPILED'.
    //           Expanded(
    //             child: ListView.separated(
    //                 separatorBuilder: (context, index) => Divider(
    //                   color: Colors.transparent,
    //                 ),
    //                 itemCount: list_down.length,
    //                 itemBuilder: (context, index) => _buildBodyDetails()
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //
    //   ),
    //   // onTap: (){
    //   //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
    //   // },
    // );
  }

  Widget _buildBodyDetails(){
    return Body_Details();
  }
}


// ignore: camel_case_types
class Body_Divide_Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var itemList = [
      "Title1", "Title2", "Title3",
      "Title4", "Title5", "Title6",
    ];
    var list_up = ["Title1", "Title2", "Title3"];
    var list_down = ["Title4", "Title5", "Title6", "Title7"];

    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Expanded(
          child: Column(
            children: <Widget>[
              // ...itemList.map((item) {
              //
              // }).toList(),
              // ListView(
              //   children: <Widget> [
              //     IntrinsicHeight(
              //       child: Row(
              //         children: <Widget>[
              //           expanded_widgets(),
              //           // Column(
              //           //   children: <Widget>[Divider()]
              //           // ),
              //           expanded_widgets_down(),
              //         ],
              //       )
              //     ),
              //   ]
              // ),

              Row(
                children: <Widget>[
                  // Import expanded_widgets class.
                  expanded_widgets(),
                ],
              ),
              divider(),
              // Import buttons that combined Image and Text.
              // For the codes that belows 'IN PROGRESS'.
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.transparent,
                    ),
                    itemCount: list_up.length,
                    itemBuilder: (context, index) => _buildBodyDetails()
                ),
              ),
              Row(
                children: <Widget>[
                  // Import expanded_widgets_down class.
                  expanded_widgets_down(),
                ],
              ),
              divider(),
              //
              // // For the codes that belows 'COMPILED'.
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.transparent,
                    ),
                    itemCount: list_down.length,
                    itemBuilder: (context, index) => _buildBodyDetails()
                ),
              ),
            ],
          ),
        )

      ),
      // onTap: (){
      //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
      // },
    );
    // Expanded(
    //   child: ListView.separated(
    //       separatorBuilder: (context, index) => Divider(
    //         color: Colors.transparent,
    //       ),
    //       itemCount: itemList.length,
    //       // itemBuilder: (context, index) => _buildBodyDetails()
    //   ),
    // );
  }

  Widget _buildBodyDetails(){
    return Body_Details();
  }

  // Connects to Body_Details class.
}

// ignore: camel_case_types
class New_Body_Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // return Expanded(
    //
    // );l
  }

}

// ignore: camel_case_types
class Body_Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 70,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: expanded_widgets_up_detail()
            ),
            Expanded(
                flex: 3,
                child: expanded_widgets_down_detail()
            )
          ],
        ),
    );
  }
}
