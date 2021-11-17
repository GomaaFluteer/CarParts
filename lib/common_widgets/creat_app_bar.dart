
import 'package:auto_parts/main_screens/home_screen.dart';
import 'package:auto_parts/main_screens/product_pages/cart_screen.dart';
import 'package:auto_parts/main_screens/product_pages/product_screen.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatAppBar extends StatelessWidget with PreferredSizeWidget {

  final String label, pageType;

  final Size preferredSize;
  final Widget child;

  CreatAppBar({
    Key key,
    this.label,
    this.child,
    this.pageType,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      centerTitle: true,
      leading: pageType == ProductsScreen.route
          ? IconButton(
              icon: Icon(Icons.home,size: 30,),
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.route,);
              })
          :null,

      // IconButton(
      //         icon: Icon(Icons.arrow_back_ios),
      //         onPressed: () {
      //           Navigator.pop(context);
      //         }),

actions: pageType == ProductsScreen.route ?[Padding(
  padding: const EdgeInsets.only(right: 10.0),
  child:   IconButton(
  icon: Icon(Icons.shopping_cart,size: 30,),
  onPressed: () {
  Navigator.pushNamed(context, CartScreen.route,);
  }))
  ]:null,


      title: Text(label, style: BoldRegularWhite.display5(context)),

      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Colors.blueAccent, Colors.lightBlue],
          ),
        ),
      ),

      // inputDecorationTheme:
      // InputDecorationTheme(
      //   hintStyle: theme.inputDecorationTheme.hintStyle,
      //   border: InputBorder.none,
      // ),
    );
  }
}
