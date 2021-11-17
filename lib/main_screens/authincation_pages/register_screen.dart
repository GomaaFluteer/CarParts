import 'package:animate_do/animate_do.dart';
import 'package:auto_parts/common_widgets/creat_button.dart';
import 'package:auto_parts/common_widgets/creat_text_field.dart';
import 'package:auto_parts/main_screens/home_screen.dart';
import 'package:auto_parts/main_screens/authincation_pages/login-screen.dart';
import 'package:auto_parts/main_screens/authincation_pages/register_screen.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const route = "RegisterScreen";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.only(top: 50.0)  ,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.blue[800],
                    Colors.blue[600],
                  ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Expanded(
                flex: 2,
                child: Container(
                  // margin:const EdgeInsets.symmetric(vertical: 10.0) ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      FadeInDown(
                        duration: Duration(seconds: 1),
                        animate: true,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage("assets/images/b.jpg"),
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            fontFamily: "cairo"),
                      )
                    ],),
                ),
              ),



              Expanded(
                flex: 5,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    //physics:
                    //NeverScrollableScrollPhysics(),
                    //padding: EdgeInsets.symmetric(vertical: 60),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FadeInDown(
                            duration: Duration(seconds: 1),
                            animate: true,
                            child: CreatTextField(
                              title: "Enter your name",
                              label: "user name ",
                              labelStyle: BlackLabel.display5(context),
                              titleStyle: BlackTitle.display5(context),
                              // errorStyle: ,
                              // validate: (){},
                            ),
                          ),
                          FadeInDown(
                            duration: Duration(seconds: 1),
                            animate: true,
                            child: CreatTextField(
                              title: "Enter your Email",
                              label: "Email Adress ",
                              labelStyle: BlackLabel.display5(context),
                              titleStyle: BlackTitle.display5(context),
                              // errorStyle: ,
// validate: (){},
                            ),
                          ),
                          FadeInUp(
                            duration: Duration(seconds: 1),
                            animate: true,
                            child: CreatTextField(
                              title: " Enter Your Password",
                              label: " password",
                              labelStyle: BlackLabel.display5(context),
                              titleStyle: BlackTitle.display5(context),

// errorStyle: ,
// validate: (){},
                            ),
                          ),
                          FadeInUp(
                            duration: Duration(seconds: 1),
                            animate: true,
                            child: CreatTextField(
                              title: " Enter Your Phone",
                              label: " phone",
                              labelStyle: BlackLabel.display5(context),
                              titleStyle: BlackTitle.display5(context),

// errorStyle: ,
// validate: (){},
                            ),
                          ),
                          CreatButton(
                            topMargin: 14,
                            labelStyle: WhiteTitle.display5(context),
                            height: 48,
                            width: 297,
                            color: Colors.blue,
                            label: " sign Up",
                            onTap: () {
                              Navigator.pushNamed(context, LoginScreen.route);
                            },
                          ),


                FadeInRight(
                    duration: Duration(seconds: 1),
                    animate: true,
                    child:
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, LoginScreen.route);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Have already a new account",
                                    style: BlackTitle.display5(context),
                                  ),
                                ),
                                Text("Sign In",
                                    style: BoldRegularBlue.display5(context))
                              ],
                            ),
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
//       SingleChildScrollView(
//         child: Container(
//           constraints: BoxConstraints(
//             maxHeight: MediaQuery.of(context).size.height,
//             maxWidth: MediaQuery.of(context).size.width,
//           ),
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.centerRight,
//                   colors: [
//                 Colors.blue[800],
//                 Colors.blue[600],
//               ])),
//           child: Column(
//             //mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         radius: 45,
//                         backgroundImage: AssetImage("assets/images/b.jpg"),
//                       ),
//
//                       Text(
//                         "Sign Up",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 26,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "cairo"),
//                       )
//                     ],),
//                 ),
//               ),
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   height: double.infinity,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(40),
//                       topLeft: Radius.circular(40),
//                     ),
//                   ),
//                   child: ListView(
//                     shrinkWrap: true,
//                     physics:  NeverScrollableScrollPhysics(),
//                     //padding: EdgeInsets.symmetric(vertical: 60),
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           CreatTextField(
//                             title: "Enter your name",
//                             label: "user name ",
//                             labelStyle: BlackLabel.display5(context),
//                             titleStyle: BlackTitle.display5(context),
//                             // errorStyle: ,
//                             // validate: (){},
//                           ),
//                           CreatTextField(
//                             title: "Enter your Email",
//                             label: "Email Adress ",
//                             labelStyle: BlackLabel.display5(context),
//                             titleStyle: BlackTitle.display5(context),
//                             // errorStyle: ,
// // validate: (){},
//                           ),
//                           CreatTextField(
//                             title: " Enter Your Password",
//                             label: " password",
//                             labelStyle: BlackLabel.display5(context),
//                             titleStyle: BlackTitle.display5(context),
//
// // errorStyle: ,
// // validate: (){},
//                           ),
//                           CreatTextField(
//                             title: " Enter Your Phone",
//                             label: " phone",
//                             labelStyle: BlackLabel.display5(context),
//                             titleStyle: BlackTitle.display5(context),
//
// // errorStyle: ,
// // validate: (){},
//                           ),
//                           CreatButton(
//                             topMargin: 14,
//                             labelStyle: WhiteTitle.display5(context),
//                             height: 48,
//                             width: 297,
//                             color: Colors.blue,
//                             label: " sign up",
//                             onPress: () {
//                               Navigator.pushNamed(context, LoginScreen.route);
//                             },
//                           ),
//                           InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, LoginScreen.route);
//                             },
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Text(
//                                     "Have already a new account",
//                                     style: BlackTitle.display5(context),
//                                   ),
//                                 ),
//                                 Text("Sign In",
//                                     style: BoldRegularBlue.display5(context))
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
    );
  }
}
