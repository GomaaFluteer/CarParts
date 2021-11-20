import 'package:animate_do/animate_do.dart';
import 'package:auto_parts/common_widgets/creat_button.dart';
import 'package:auto_parts/common_widgets/creat_nav_bar.dart';
import 'package:auto_parts/common_widgets/creat_text_field.dart';
import 'package:auto_parts/main_screens/authincation_pages/register_screen.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const route = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  FirebaseAuth auth =FirebaseAuth.instance;
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50.0),
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
              Container(
                // margin:const EdgeInsets.symmetric(vertical: 10.0) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FadeInDown(
                      duration: Duration(seconds: 1),
                      animate: true,
                      child: CircleAvatar(
                        radius: w*.3,
                        backgroundImage: AssetImage("assets/images/l2.jpeg",
                        ),
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: "cairo"),
                    )
                  ],
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
                              controller: emailController,
                              onSave: (val){
                                emailController.text=val;
                              },
                              title: "Enter your Email",
                              label: "Email Adress ",
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
                              controller: passwordController,
                              onSave: (val){
                                passwordController.text=val;
                              },
                              title: " Enter Your Password",
                              label: " password",
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
                            label: " sign In",
                            onTap: () async{
                              try{
                                await auth.signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text);
                                Navigator.pushReplacementNamed(context, CreatNavigationBar.route);
                              }
                              catch(e){
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text( "Error Login"+  e.message),
                                ));
                              }
                            },
                          ),
                          FadeInLeft(
                              duration: Duration(seconds: 1),
                              animate: true,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RegisterScreen.route);
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
                                    Text("Sign Up",
                                        style:
                                            BoldRegularBlue.display5(context))
                                  ],
                                ),
                              )),
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
    );
  }
}
// Scaffold(
// // appBar: AppBar(
// //   elevation: 0,
// //   //backgroundColor: Color(0xffFAFAFA),
// // ),
// body: Container(
// constraints: BoxConstraints(
// maxHeight: MediaQuery.of(context).size.height,
// maxWidth: MediaQuery.of(context).size.width,
// ),
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.centerRight,
// colors: [
// Colors.blue[800],
// Colors.blue[600],
// ])),
// child: Column(
// //mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Expanded(
// flex: 2,
// child: Padding(
// padding: const EdgeInsets.all(15.0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// // crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Text(
// "Sign Up",
// style: TextStyle(
// color: Colors.white,
// fontSize: 30,
// fontWeight: FontWeight.bold,
// fontFamily: "cairo"),
// )
// ],
// ),
// ),
// ),
// Expanded(
// flex: 5,
// child: Container(
// height: double.infinity,
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(40),
// topLeft: Radius.circular(40),
// ),
// ),
// ),
// )
// ],
// ),
// ),
// );
