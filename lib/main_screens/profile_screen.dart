import 'package:auto_parts/common_widgets/creat_button.dart';
import 'package:auto_parts/common_widgets/creat_nav_bar.dart';
import 'package:auto_parts/main_screens/home_screen.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:auto_parts/common_widgets/creat_text_field.dart';
import 'nav_bar_screens/car_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const route = "ProfileScreen";
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.blue,
                        width: 3.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/b.jpg"),
                    ),
                  ),
                  Positioned(
                      top: 110,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.orange,
                            size: 25,
                          ))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              creatUserInformation(
                  title: "name", userInformation: "mohamed Ali"),
              creatUserInformation(
                  title: "Email", userInformation: "mohamed@gmail.com"),
              creatUserInformation(
                  title: "phone", userInformation: "01021456754"),
              CreatButton(
                topMargin: 50,
                color: Color(0xffFDCE03),
                labelStyle: RegularDarkBlue.display5(context),
                height: 50,
                width: 150,
                label: 'Add Car Profile',
                onTap: () {
                  showModalBottomSheet(
                      elevation: 5,
                      enableDrag: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      isDismissible: false,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.only(bottom: 40.0, top: 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(
                                          Icons.cancel,
                                          color: Colors.blueAccent,
                                          size: 30,
                                        )),
                                  ],
                                ),
                                CreatTextField(
                                  title: "Enter Your Car Type",
                                  label: "  ",
                                  labelStyle: BlackLabel.display5(context),
                                  titleStyle: BlackTitle.display5(context),
                                  // errorStyle: ,
                                  // validate: (){},
                                ),
                                CreatTextField(
                                  title:
                                      "when you had renewed your car license",
                                  label: "  ",

                                  labelStyle: BlackLabel.display5(context),
                                  titleStyle: BlackTitle.display5(context),
                                  // errorStyle: ,
                                  // validate: (){},
                                ),
                                CreatTextField(
                                  title:
                                      "when you had renewed your Driving license",
                                  label: "  ",
                                  labelStyle: BlackLabel.display5(context),
                                  titleStyle: BlackTitle.display5(context),
                                  // errorStyle: ,
                                  // validate: (){},
                                ),
                                CreatTextField(
                                  title: "when you had renewed your Car Tires",
                                  label: "  ",
                                  labelStyle: BlackLabel.display5(context),
                                  titleStyle: BlackTitle.display5(context),
                                  // errorStyle: ,
                                  // validate: (){},
                                ),
                                CreatTextField(
                                  title: "when you had renewed your Motor Oil",
                                  label: "  ",
                                  labelStyle: BlackLabel.display5(context),
                                  titleStyle: BlackTitle.display5(context),
                                  // errorStyle: ,
                                  // validate: (){},
                                ),
                                // CreatTextField(
                                //   title: " Enter Your Phone",
                                //   label: " phone",
                                //   labelStyle: BlackLabel.display5(context),
                                //   titleStyle: BlackTitle.display5(context),
                                //   // errorStyle: ,
                                //   // validate: (){},
                                // ),
                                CreatButton(
                                    // topMargin: 50,
                                    color: Color(0xffFDCE03),
                                    labelStyle:
                                        RegularDarkBlue.display5(context),
                                    height: 50,
                                    width: 150,
                                    label: 'Save',
                                    onTap: () {
                                      Navigator.pop(context);

                                    })
                              ],
                            ),
                          ));
                },
              ),
              CreatButton(
                topMargin: 30,
                color: Color(0xffFDCE03),
                labelStyle: RegularDarkBlue.display5(context),
                height: 50,
                width: 150,
                label: 'Log out',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget creatUserInformation(
      {String title, userInformation, bool isProfile, String notifiedTitle}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 2),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Text(
            "$title : ",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "$userInformation ",
            style: TextStyle(color: Colors.blueAccent, fontSize: 18),
          )
        ],
      ),
    );
  }
}
