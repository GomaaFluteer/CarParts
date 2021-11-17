// import 'package:auto_parts/utilities/text_style.dart';
//
// import 'package:flutter/material.dart';
//
// class CreatSearchBar extends StatelessWidget {
//
//   final Function onChange;
//   final double topMargin, height, width;
//   CreatSearchBar(
//       {Key key, this.onChange, this.topMargin, this.height, this.width})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: height == null ? 40 : height,
//         width: width == null ? 290 : width,
//         margin: EdgeInsets.symmetric(
//           vertical: topMargin == null ? 5 : 0,
//         ),
//         child: TextField(
//             textDirection: TextDirection.rtl,
//             textAlign: TextAlign.right,
//             style: BlackTitle.display5(context),
//             onChanged: onChange,
//             //validator: validate,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.white,
//               hintText: ("البحث"),
//               hintStyle: BlackTitle.display5(context),
//               contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
//               focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
//             )));
//   }
// }
//
//
//
// //////////////////////

import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';


class CreatSearchBar extends StatelessWidget {
  const CreatSearchBar({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.black),
        textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: Icon(Icons.search,color:Colors.blueAccent ,),
          hintText: 'البحث',
          hintStyle: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}



