import 'package:auto_parts/local_data/local_data.dart';
import 'package:auto_parts/main_screens/nav_bar_screens/car_screen.dart';
import 'package:auto_parts/main_screens/nav_bar_screens/cart_Screen.dart';
import 'package:auto_parts/main_screens/nav_bar_screens/favorite_screen.dart';
import 'package:auto_parts/main_screens/home_screen.dart';
import 'package:auto_parts/main_screens/authincation_pages/login-screen.dart';
import 'package:auto_parts/main_screens/product_pages/cart_screen.dart';
import 'package:auto_parts/main_screens/profile_screen.dart';
import 'package:flutter/material.dart';

class CreatNavigationBar extends StatefulWidget {
  static const route = "CreatNavigationBar";

  @override
  State<StatefulWidget> createState() => CreatNavigationBarState();
}

class CreatNavigationBarState extends State<CreatNavigationBar> {
  int _selectedIndex = 0;

  List<Widget> pages = <Widget>[
    HomeScreen(),
    ProfileScreen(),
    CartScreen(),
    CarScreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body:pages.elementAt(_selectedIndex),
      bottomNavigationBar: Material(

        elevation: 0.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Container(

          padding: EdgeInsets.symmetric(horizontal: 5,),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.grey,
                Colors.white10,
                Colors.white,

            Colors.white60,
                Colors.grey

              ],
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)
            ),
            border: Border.all(color: Colors.grey,width: 1)
          ),
          child: BottomNavigationBar(

            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedLabelStyle: TextStyle(
                fontSize: 16, fontFamily: "cairo", fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(
              fontSize: 16, fontFamily: "cairo", fontWeight: FontWeight.bold),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            currentIndex: _selectedIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('profile')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), title: Text('Cart')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.car_rental), title: Text('MY Car',
              )),

            ],
          ),
        ),
      ),
    );
  }
}
