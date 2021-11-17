import 'package:auto_parts/common_widgets/creat_nav_bar.dart';
import 'package:auto_parts/main_screens/home_screen.dart';
import 'package:auto_parts/main_screens/authincation_pages/login-screen.dart';
import 'package:auto_parts/main_screens/authincation_pages/register_screen.dart';
import 'package:auto_parts/main_screens/nav_bar_screens/car_screen.dart';
import 'package:auto_parts/main_screens/nav_bar_screens/cart_Screen.dart';
import 'package:auto_parts/main_screens/product_pages/cart_screen.dart';
import 'package:auto_parts/main_screens/product_pages/product_details.dart';
import 'package:auto_parts/main_screens/product_pages/product_screen.dart';
import 'package:auto_parts/main_screens/profile_screen.dart';
import 'package:auto_parts/main_screens/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  HomeScreen.route: (context) => HomeScreen(),
  RegisterScreen.route: (context) => RegisterScreen(),
  SplashScreen.route: (context) => SplashScreen(),
  LoginScreen.route: (context) => LoginScreen(),
  ProductsScreen.route: (context) => ProductsScreen(),
  ProductDetails.route: (context) => ProductDetails(),
    CartScreen.route: (context) => CartScreen(),
  CreatNavigationBar.route: (context) => CreatNavigationBar(),
  ProfileScreen.route: (context) => ProfileScreen(),
  CarScreen.route: (context) => CarScreen(),

};
