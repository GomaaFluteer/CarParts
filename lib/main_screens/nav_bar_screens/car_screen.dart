
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class CarScreen extends StatefulWidget {
  static const route = "CarScreen";
  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
          body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 40),
      itemCount: 3,
      itemBuilder:( context,index)=>Card(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius
        : BorderRadius.circular(15)),
        child: Container(
          height: 180,
          padding: EdgeInsets.all(10),



          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text("your Car type is : ",style: RegularDarkBlue.display5(context),),
                Text("20/20/2020",style: RegularBlue.display5(context),),
              ],),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" Last Renew for your Car License is : ",style: RegularDarkBlue.display5(context),),
                  Text("20/20/2020",style: RegularBlue.display5(context),),
                ],),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" Last Renew for your  Driving License is : ",style: RegularDarkBlue.display5(context),),
                  Text("20/20/2020",style: RegularBlue.display5(context),),
                ],),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" Last Renew for your Car Tires : ",style: RegularDarkBlue.display5(context),),
                  Text("20/20/2020",style: RegularBlue.display5(context),),
                ],),


              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" Last Renew for your Motor Oil : ",style: RegularDarkBlue.display5(context),),
                  Text("20/20/2020",style: RegularBlue.display5(context),),
                ],),
















            ],








          ),
        ),
      ))),
    );
  }
}
