// import 'package:auto_parts/common_widgets/creat_app_bar.dart';
// import 'package:auto_parts/common_widgets/creat_product_card.dart';
// import 'package:auto_parts/common_widgets/creat_search_bar.dart';
//
// import 'package:auto_parts/models/car_model.dart';
// import 'package:auto_parts/utilities/text_style.dart';
// import 'package:flutter/material.dart';
//
//
// class ProductsScreen extends StatefulWidget {
//   static const route = "ProductsScreen";
//
//   @override
//   _ProductsScreenState createState() => _ProductsScreenState();
// }
//
// enum IsSelected { carParts, accessories, other }
//
// class _ProductsScreenState extends State<ProductsScreen> {
//   IsSelected _isSelected;
//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       _isSelected = IsSelected.carParts;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: CreatAppBar(label: "car parts"),
//         body: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             margin: EdgeInsets.symmetric(vertical: 20),
//             child: Column(children: [
//               // CreatSearchBar(
//               //   onChange: (value) {
//               //     print("ok");
//               //     showSearch(context: context, delegate: DataSearch());
//               //   },
//               // ),
//               // Row(
//               //   children: [
//               //     catigoriesType(
//               //         label: "قطع الغيار",
//               //         color: _isSelected == IsSelected.carParts
//               //             ? Colors.deepOrange
//               //             : Colors.blueAccent,
//               //         onPress: () {
//               //           setState(() {
//               //             _isSelected = IsSelected.carParts;
//               //           });
//               //         }),
//               //     catigoriesType(
//               //         label: "اكسسورات",
//               //         color: _isSelected == IsSelected.accessories
//               //             ? Colors.deepOrange
//               //             : Colors.blueAccent,
//               //         onPress: () {
//               //           setState(() {
//               //             _isSelected = IsSelected.accessories;
//               //           });
//               //         }),
//               //     catigoriesType(
//               //         label: "اخري",
//               //         color: _isSelected == IsSelected.other
//               //             ? Colors.deepOrange
//               //             : Colors.blueAccent,
//               //         onPress: () {
//               //           setState(() {
//               //             _isSelected = IsSelected.other;
//               //           });
//               //         })
//               //   ],
//               // ),
//               Expanded(
//                 child: GridView.builder(
//                   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                   itemCount: _isSelected == IsSelected.carParts
//                       ? carParts.length
//                       : _isSelected == IsSelected.accessories
//                           ? carAcessors.length
//                           : others.length,
//                   shrinkWrap: true,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     childAspectRatio: 0.7,
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 5.0,
//                     mainAxisSpacing: 5.0,
//                   ),
//                   itemBuilder: (context, index) =>
//
//                       CreatProductCard(
//                     productImage: _isSelected == IsSelected.carParts
//                         ? carParts[index].productImage
//                         : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].productImage
//                             : others[index].productImage,
//
//
//                     companyName: _isSelected == IsSelected.carParts
//                         ? carParts[index].companyName
//                         : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].companyName
//                             : others[index].companyName,
//
//
//                     carType: _isSelected == IsSelected.carParts
//                         ? carParts[index].carType
//                         : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].carType
//                             : others[index].carType,
//
//
//                     productName: _isSelected == IsSelected.carParts
//                         ? carParts[index].productName
//                         : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].productName
//                             : others[index].productName,
//
//
//                     productCoast: _isSelected == IsSelected.carParts
//                         ? carParts[index].productCoast
//                         : _isSelected == IsSelected.accessories
//                             ? carAcessors[index].productCoast
//                             : others[index].productCoast,
//
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ));
//   }
//   // Widget catigoriesType({String label, Function onPress, Color color}) {
//   //   return Expanded(
//   //     flex: 1,
//   //     child: NeumorphicButton(
//   //       onPressed: onPress,
//   //       margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 3),
//   //       curve: Curves.decelerate,
//   //       duration: Duration(microseconds: 400),
//   //       provideHapticFeedback: false,
//   //       minDistance: 15.0,
//   //       style: NeumorphicStyle(
//   //         color: color,
//   //         shape: NeumorphicShape.flat,
//   //         boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
//   //       ),
//   //       child: Text(
//   //         label,
//   //         textAlign: TextAlign.center,
//   //         style: WhiteTitle.display5(context),
//   //       ),
//   //     ),
//   //   );
//   // }
// }
