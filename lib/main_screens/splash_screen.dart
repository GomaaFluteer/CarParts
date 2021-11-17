import 'package:animate_do/animate_do.dart';
import 'package:auto_parts/main_screens/authincation_pages/login-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const route = "SplashScreen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            FadeInDown(
              duration: Duration(seconds: 2),
              animate: true,
              child: Image.asset(
                "assets/images/l2.jpeg",
                width: 302.0,
                height: 302.0,
                fit: BoxFit.cover,
              ),
            ),

            FadeInUp(
                duration: Duration(seconds: 2),
                animate: true,
                child: Container(

                    child: Column(

                  children: [
                    Text(
                      ' auto parts ',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30,
                          fontFamily: "cairo",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '  for all types of cars',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30,
                          fontFamily: "cairo",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ))),


          ],
        ),
      ),
    );
  }
}
// ListView(
// children: <Widget>[
// FadeInLeft(
//
// //duration: Duration(seconds:3),
// duration: Duration(seconds: 2),
// animate: true,
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// color: Colors.red,
// height: 100,
// width: 100,
// )),
// FadeInUp(
// duration: Duration(seconds: 2),
// animate: true,
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// color: Colors.blue,
// height: 100,
// width: 100,
// )),
// FadeInDown(
// duration: Duration(seconds: 2),
// animate: true,
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// color: Colors.green,
// height: 100,
// width: 100,
// )),
// FadeInRight(
// duration: Duration(seconds: 2),
// animate: true,
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// color: Colors.yellow,
// height: 100,
// width: 100,
// )),
// ],
// ),
