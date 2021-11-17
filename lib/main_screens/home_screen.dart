import 'package:auto_parts/common_widgets/carousel.dart';
import 'package:auto_parts/common_widgets/creat_app_bar.dart';
import 'package:auto_parts/common_widgets/creat_button.dart';
import 'package:auto_parts/main_screens/product_pages/product_screen.dart';
import 'package:auto_parts/models/car_model.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  static const route = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isNotified=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CreatAppBar(label: "Main Page"),
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Carousel(img: []),
              SizedBox(
                height: 10,
              ),
              Text(
                "all Cars Brands",
                style: BoldRegularBlue.display5(context),
              ),
              Text(
                "    Choose Your Car Brand From the Below List",
                style: RegularBlue.display5(context),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.9,
                    crossAxisCount: 5,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: carBrands.length, //user.length,
                  itemBuilder: (context, index) =>
                      AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: const Duration(milliseconds: 1000),
                    columnCount: 3,
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: InkWell(
                          onTap: () => {
                            Navigator.pushNamed(context, ProductsScreen.route)
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Container(
                              // height: 20,
                              // width: 20,
                              // padding: EdgeInsets.symmetric(
                              //   horizontal: 3,
                              // ),
                              // margin: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                              child: Image.asset(
                                carBrands[index],
                                // carParts[index].productImage,
                                // scale: 0.2,
                                width: 200.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),

                              decoration: BoxDecoration(
                                //color: Colors.red,
                                //
                                // image: DecorationImage(
                                //   image: AssetImage(homeScreenData[index]),
                                //   fit: BoxFit.fill,
                                // ),

                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
      drawer: SafeArea(
        bottom: false,
        top: true,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
          child: Drawer(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              color: Color(0xff071333),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              color: Color(0xffFDCE03),
                              width: 4.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage("assets/images/b.jpg"),
                          ),
                        ),
                        // Positioned(
                        //     top: 110,
                        //     child: IconButton(
                        //         onPressed: () {},
                        //         icon: Icon(
                        //           Icons.camera_alt_rounded,
                        //           color: Colors.orange,
                        //           size: 25,
                        //         ))),
                      ],
                    ),
Row(children: [


  creatDrawerItems(label: "Notifications",icon: FontAwesomeIcons.cogs,onPressed: (){}),
  SizedBox(width: 15,),
  CupertinoSwitch(
    activeColor: Colors.yellow,
   trackColor: Colors.blueGrey,
    value: isNotified,
    onChanged: (value) {
      setState(() {
        isNotified = value;
      });
    },
  ),

],),
                    creatDrawerItems(label: "Payment Method",icon: FontAwesomeIcons.ccVisa,onPressed: (){}),
                    creatDrawerItems(label: "About Us",icon: FontAwesomeIcons.addressCard,onPressed: (){}),
                    creatDrawerItems(label: "Terms and Conditions ",icon: FontAwesomeIcons.exclamationCircle,onPressed: (){}),
                    creatDrawerItems(label: "Privacy ",icon: FontAwesomeIcons.desktop,onPressed: (){}),






                    CreatButton(
  topMargin: 50,

  color: Color(0xffFDCE03),
                      labelStyle:RegularDarkBlue.display5(context) ,
  height: 50,
  width: 150,
  label: 'Log out',
  onTap: () {},
),







                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
Widget creatDrawerItems({String label,IconData icon,Function  onPressed}){

  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(icon,size: 30,color: Colors.yellow,),onPressed: onPressed,),
        ),
      Text(label,style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 18),),




    ],),
  );


}

}

// InkWell(
// onTap: () {},
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// "edit",
// style: TextStyle(
// color: Colors.orange,
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.edit,
// color: Colors.orange,
// size: 25,
// ))
// ],
// ),
// ),
// Container(
// margin: const EdgeInsets.symmetric(
// vertical: 30.0, horizontal: 10),
// child: Row(
// children: [
// Text(
// "name : ",
// style: TextStyle(
// color: Colors.orange,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// ),
// Text(
// "Mohamed Ali",
// style: TextStyle(color: Colors.orange, fontSize: 18),
// )
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(bottom: 30.0, left: 10),
// child: Row(
// children: [
// Text(
// "Email : ",
// style: TextStyle(
// color: Colors.orange,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// ),
// Text(
// "Mohamed@gmail.com",
// style: TextStyle(color: Colors.orange, fontSize: 18),
// )
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 10.0, horizontal: 10),
// child: Row(
// children: [
// Text(
// "Phone : ",
// style: TextStyle(
// color: Colors.orange,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// ),
// Text(
// "01021562532",
// style: TextStyle(color: Colors.orange, fontSize: 18),
// )
// ],
// ),
// ),
// // CreatButton(
// //   topMargin: 50,
// //   fontSize: 20,
// //   backgroundColor: Color(0xffFDCE03),
// //   labelColor: Color(0xff071333),
// //   height: 50,
// //   width: 150,
// //   label: 'Logout',
// //   onPress: () {},
// // ),
