
import 'package:auto_parts/main_screens/test1.dart';
import 'package:auto_parts/main_screens/authincation_pages/register_screen.dart';
import 'package:auto_parts/main_screens/splash_screen.dart';
import 'package:auto_parts/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'common_widgets/creat_nav_bar.dart';
import 'main_screens/home_screen.dart';
import 'main_screens/authincation_pages/login-screen.dart';
import 'main_screens/product_pages/cart_screen.dart';
import 'main_screens/product_pages/product_screen.dart';
import 'main_screens/profile_screen.dart';
//https://www.youtube.com/watch?v=bkR7naR1efA
//https://www.youtube.com/watch?v=XIyyZpZiHWc
//https://www.youtube.com/watch?v=X7EYVc8P3yM
//https://www.youtube.com/watch?v=4AUuhhSakro
void main() {
  runApp(MyApp()); // run app
} // void main
///// ثبت النف بار والروت بتاع البرودكت
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          debugShowCheckedModeBanner: false,
       routes: routes,
       initialRoute:
       //ProductsScreen.route
       //ProfileScreen.route,
       //LoginScreen.route
       SplashScreen.route,



      );
  }
}