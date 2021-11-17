import 'package:auto_parts/common_widgets/creat_app_bar.dart';
import 'package:auto_parts/common_widgets/creat_dropdown_button.dart';
import 'package:auto_parts/common_widgets/creat_product_card.dart';
import 'package:auto_parts/common_widgets/creat_search_bar.dart';
import 'package:auto_parts/main_screens/product_pages/product_details.dart';
import 'package:auto_parts/models/car_model.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';


// import 'dart:ui';


enum IsSelected { carParts, accessories, other, all }

class ProductsScreen extends StatefulWidget {
  static const route = "ProductsScreen";
  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  IsSelected _isSelected;
  var selectedItem;
  var newList = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      _isSelected = IsSelected.all;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CreatAppBar(
          pageType: ProductsScreen.route,
          label: "car parts",
          child: IconButton(
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )),
      backgroundColor: Color(0xFF035AA6),
      body: SafeArea(
        bottom: false,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: <Widget>[
///////////////////////////////////////////
              //// يبقي انا هنا ببعت لقواعد البيانات
              CreatDropDownButton(
                topMargin: 10,
                value: selectedItem,
                onChanged: (value) {
                  setState(() {
                    selectedItem = value;
                  });
                  carParts.map((e) => newList.add(e.carType));


                  if(newList.contains(selectedItem))
                  {
                    return carParts[newList.indexOf(selectedItem)]  ;
                    //newList.indexOf(selectedItem)
                  }
//                     print( true);
// else print( false);

                },
                items: [
                  "هونداي ٢١٢١",
                  "هونداي ٢٢٢٠",
                  "مرسيديس ٢١٢١",
                  "مرسيديس ٩٨٩٨",
                  "كيا ٢١٢١",
                  " كيا 676",
                  "bmw",
                  "bmw 676"
                ],
                startItem: "choose your car type",
                labelStyle: BlueTitle.display5(context),
              ),

              CreatSearchBar(),
/////////////////// catigory /////////////////
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    categoriesType(
                        label: "اخري",
                        color: _isSelected == IsSelected.other
                            ? Colors.white.withOpacity(0.4)
                            : Colors.transparent,
                        onPress: () {
                          setState(() {
                            _isSelected = IsSelected.other;
                          });
                        }),
                    categoriesType(
                        label: "اكسسورات",
                        color: _isSelected == IsSelected.accessories
                            ? Colors.white.withOpacity(0.4)
                            : Colors.transparent,
                        onPress: () {
                          setState(() {
                            _isSelected = IsSelected.accessories;
                          });
                        }),
                    categoriesType(
                        label: "قطع الغيار",
                        color: _isSelected == IsSelected.carParts
                            ? Colors.white.withOpacity(0.4)
                            : Colors.transparent,
                        onPress: () {
                          setState(() {
                            _isSelected = IsSelected.carParts;
                          });
                        }),
                    categoriesType(
                        label: " الكل",
                        color: _isSelected == IsSelected.all
                            ? Colors.white.withOpacity(0.4)
                            : Colors.transparent,
                        onPress: () {
                          setState(() {
                            _isSelected = IsSelected.all;
                          });
                        }),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Expanded(
                child: Stack(children: <Widget>[
                  // Our background
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
/////////////////////////////////////////////// Card Product

                  ListView.builder(
                    itemCount: _isSelected == IsSelected.carParts
                        ? carParts.length
                        : _isSelected == IsSelected.accessories
                        ? carAcessors.length
                        : others.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ProductCard(
                        productId: carParts[index].id,
                        companyName: _isSelected == IsSelected.carParts
                            ? carParts[index].companyName
                            : _isSelected == IsSelected.accessories
                            ? carAcessors[index].companyName
                            : others[index].companyName,
                        productCoast: _isSelected == IsSelected.carParts
                            ? carParts[index].productCoast
                            : _isSelected == IsSelected.accessories
                            ? carAcessors[index].productCoast
                            : others[index].productCoast,
                        carType: _isSelected == IsSelected.carParts
                            ? carParts[index].carType
                            : _isSelected == IsSelected.accessories
                            ? carAcessors[index].carType
                            : others[index].carType,
                        productName: _isSelected == IsSelected.carParts
                            ? carParts[index].productName
                            : _isSelected == IsSelected.accessories
                            ? carAcessors[index].productName
                            : others[index].productName,
                        productImage: _isSelected == IsSelected.carParts
                            ? carParts[index].productImage
                            : _isSelected == IsSelected.accessories
                            ? carAcessors[index].productImage
                            : others[index].productImage,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                      carModel:
                                      _isSelected == IsSelected.carParts
                                          ? carParts[index]
                                          : _isSelected ==
                                          IsSelected.accessories
                                          ? carAcessors[index]
                                          : others[index])));
                        }),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriesType({
    String label,
    Function onPress,
    Color color,
  }) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          style: WhiteTitle.display5(context),
        ),
      ),
    );
  }
  void filterCarParts(value){




  }



}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.search,
          size: 25,
          color: Colors.blueAccent,
        ),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        size: 25,
        color: Colors.blueAccent,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text(
      "sdjkjsk",
      style: TextStyle(color: Colors.white),
    );
  }
}



























//
//
// enum IsSelected { carParts, accessories, other, all }
// class ProductsScreen extends StatefulWidget {
//   static const route = "ProductsScreen";
//   @override
//   State<ProductsScreen> createState() => _ProductsScreenState();
// }
// class _ProductsScreenState extends State<ProductsScreen> {
//   IsSelected _isSelected;
//   var selectedItem;
//   List<String> items = [
//     "p1",
//     "p2",
//     "p3",
//     "p4",
//     "p5",
//     "p6",
//     "p7",
//     "p8",
//   ];
//   List<CarModel> newList = [];
//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       _isSelected = IsSelected.carParts;
//       newList=carParts;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CreatAppBar(
//           label: "car parts",
//           child: IconButton(
//             icon: Icon(
//               Icons.search,
//               size: 25,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               showSearch(context: context, delegate: DataSearch());
//             },
//           )),
//       backgroundColor: Color(0xFF035AA6),
//       body: SafeArea(
//         bottom: false,
//         child: Directionality(
//           textDirection: TextDirection.rtl,
//           child: Column(
//             children: <Widget>[
// ///////////////////////////////////////////
//               //// يبقي انا هنا ببعت لقواعد البيانات
//               CreatDropDownButton(
//                 topMargin: 10,
//                 value: selectedItem,
//                 onChanged: (value) {
//                   setState(() {
//                     selectedItem = value;
//                     // newList.clear();
//                   });
//                   _isSelected == IsSelected.carParts
//                       ? carParts.forEach((e) {
//                     if (e.carType == selectedItem) {
//                       print("${e.carType} +rrr");
//                       newList.add(e);
//                       setState(() {  });
//
//                       // print("${newList} +cccc");
//                     }
//
//                   })
//                       : _isSelected == IsSelected.accessories
//                       ? carAcessors.forEach((e) {
//                     setState(() {
//                       newList.clear();
//                     });
//                     if (e.carType == selectedItem) {
//                       // print("${e.carType} +rrr");
//                       setState(() {
//                         newList.add(e);
//                       });
//
//                       // print("${newList} +cccc");
//                     }
//                   })
//                       : _isSelected == IsSelected.other
//                       ? others.forEach((e) {
//                     setState(() {
//                       newList.clear();
//                     });
//                     if (e.carType == selectedItem) {
//                       // print("${e.carType} +rrr");
//                       newList.add(e);
//                       // print("${newList} +cccc");
//                     }
//                     setState(() {});
//                   })
//                       : print("$newList +lllll");
//                 },
//
//                 items: [
//                   "p1",
//                   "p2",
//                   "p3",
//                   "p4",
//                   "p5",
//                   "p6",
//                   "p7",
//                   "p8",
//                 ],
//
//                 startItem: "choose your car type",
//                 labelStyle: BlueTitle.display5(context),
//               ),
//
//               CreatSearchBar(),
// /////////////////// catigory /////////////////
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
//                 height: 30,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     categoriesType(
//                         label: "اخري",
//                         color: _isSelected == IsSelected.other
//                             ? Colors.white.withOpacity(0.4)
//                             : Colors.transparent,
//                         onPress: () {
//                           setState(() {
//                             _isSelected = IsSelected.other;
//                             // newList.clear();
//                             // newList.addAll(others);
//                           });
//                         }),
//                     categoriesType(
//                         label: "اكسسورات",
//                         color: _isSelected == IsSelected.accessories
//                             ? Colors.white.withOpacity(0.4)
//                             : Colors.transparent,
//                         onPress: () {
//                           setState(() {
//                             _isSelected = IsSelected.accessories;
//
//                             // newList.clear();
//                             // newList.addAll(carAcessors);
//                           });
//                         }),
//                     categoriesType(
//                         label: "قطع الغيار",
//                         color: _isSelected == IsSelected.carParts
//                             ? Colors.white.withOpacity(0.4)
//                             : Colors.transparent,
//                         onPress: () {
//                           setState(() {
//                             _isSelected = IsSelected.carParts;
//                             //
//                             // newList.clear();
//                             // newList.addAll(carParts);
//                           });
//                         }),
//                     categoriesType(
//                         label: " الكل",
//                         color: _isSelected == IsSelected.all
//                             ? Colors.white.withOpacity(0.4)
//                             : Colors.transparent,
//                         onPress: () {
//                           setState(() {
//                             _isSelected = IsSelected.all;
//                           });
//                         }),
//                   ],
//                 ),
//               ),
//               SizedBox(height: kDefaultPadding / 2),
//               Expanded(
//                 child: Stack(children: <Widget>[
//                   // Our background
//                   Container(
//                     margin: EdgeInsets.only(top: 70),
//                     decoration: BoxDecoration(
//                       color: kBackgroundColor,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(40),
//                         topRight: Radius.circular(40),
//                       ),
//                     ),
//                   ),
// /////////////////////////////////////////////// Card Product
//
//                   ListView.builder(
//                     itemCount: _isSelected == IsSelected.carParts
//                         ? newList.length
//                         : _isSelected == IsSelected.accessories
//                         ? newList.length
//                         : newList.length,
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) => ProductCard(
//                         productId: carParts[index].id,
//                         companyName: _isSelected == IsSelected.carParts
//                             ? carParts[index].companyName
//                             : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].companyName
//                             : others[index].companyName,
//                         productCoast: _isSelected == IsSelected.carParts
//                             ? carParts[index].productCoast
//                             : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].productCoast
//                             : others[index].productCoast,
//                         carType: _isSelected == IsSelected.carParts
//                             ? newList[index].carType
//                             : _isSelected == IsSelected.accessories
//                             ? newList[index].carType
//                             : newList[index].carType,
//                         productName: _isSelected == IsSelected.carParts
//                             ? carParts[index].productName
//                             : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].productName
//                             : others[index].productName,
//                         productImage: _isSelected == IsSelected.carParts
//                             ? carParts[index].productImage
//                             : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].productImage
//                             : others[index].productImage,
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => ProductDetails(
//                                       carModel:
//                                       _isSelected == IsSelected.carParts
//                                           ? carParts[index]
//                                           : _isSelected ==
//                                           IsSelected.accessories
//                                           ? carAcessors[index]
//                                           : others[index])));
//                         }),
//                   ),
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget categoriesType({
//     String label,
//     Function onPress,
//     Color color,
//   }) {
//     return InkWell(
//       onTap: onPress,
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(6),
//         ),
//         child: Text(
//           label,
//           style: WhiteTitle.display5(context),
//         ),
//       ),
//     );
//   }
//
//   void filterCarParts(value) {}
// }
// class DataSearch extends SearchDelegate {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(
//           Icons.search,
//           size: 25,
//           color: Colors.blueAccent,
//         ),
//         onPressed: () {},
//       )
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         Icons.arrow_back_ios,
//         size: 25,
//         color: Colors.blueAccent,
//       ),
//       onPressed: () {},
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return null;
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Text(
//       "sdjkjsk",
//       style: TextStyle(color: Colors.white),
//     );
//   }
// }