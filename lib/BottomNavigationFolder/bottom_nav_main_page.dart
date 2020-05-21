import 'package:com/BottomNavigationFolder/bottom_nav_account_page.dart';
import 'package:com/BottomNavigationFolder/bottom_nav_cart_page.dart';
import 'package:com/BottomNavigationFolder/bottom_nav_purchase_record_page.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_home_page.dart';

//we use this page to show all navagion bar

class BottomNavMainPage extends StatefulWidget {
  @override
  _BottomNavMainPageState createState() => _BottomNavMainPageState();
}

class _BottomNavMainPageState extends State<BottomNavMainPage> {
  int _selectedIndext = 0;
  List<Widget> _bottomNavPages = <Widget>[
    BottomNavHomePage(),
    BottomNavCartPage(),
    BottomNavPurchaseRecordPage(),
    BottomNavAccountPage()
  ];

  //to change navigation page when we click nav items
  void _onBottomNavTapped(int indext) {
    setState(() {
      _selectedIndext = indext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavPages.elementAt(_selectedIndext),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //for home
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black45,),
              title: Text("Home")),

          //for  cart
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart,color: Colors.black45,),
              title: Text("Cart")),

          //for purchase record
           BottomNavigationBarItem(
            icon: Icon(Icons.library_books,color: Colors.black45,),
             title: Text("Record")
          ),

          //For account
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,color: Colors.black45,),

        ],
        currentIndex: _selectedIndext,
        selectedItemColor: Colors.blue,
      //  onTap: _onBottomNavTapped,
      ),
    );
  }


}
