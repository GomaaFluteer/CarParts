// import 'package:auto_parts/utilities/text_style.dart';
// import 'package:flutter/material.dart';
//
// class CreatDropDownButton extends StatefulWidget {
//   final List<DropdownMenuItem<String>> items;
//   final String startItem, value;
//   final TextStyle labelStyle;
//   final double topMargin, height, width;
//   final Color buttonBackground, listBackGround;
//
//   final Function onChanged;
//   const CreatDropDownButton({
//     Key key,
//     this.items,
//     this.startItem,
//     this.topMargin,
//     this.height,
//     this.width,
//     this.labelStyle,
//     this.buttonBackground,
//
//     this.listBackGround,
//     this.onChanged,
//     this.value,
//   }) : super(key: key);
//   @override
//   _CreatDropDownButtonState createState() => _CreatDropDownButtonState();
// }
//
// class _CreatDropDownButtonState extends State<CreatDropDownButton> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.all(kDefaultPadding),
//         padding: EdgeInsets.symmetric(
//           horizontal: kDefaultPadding,
//           vertical: kDefaultPadding / 4, // 5 top and bottom
//         ),
//          width: MediaQuery.of(context).size.width*0.5,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: DropdownButton<String>(
//             // onTap: () {},
//
//             hint: Container(
//                 child: Text(
//               widget.startItem,
//               style: widget.labelStyle,
//             )),
//             // style: TextStyle(color: Colors.yellow),
//             dropdownColor: Colors.white,
//             icon: Icon(
//               Icons.arrow_drop_down_sharp,
//               color: Colors.blueAccent,
//             ),
//             iconSize: 35,
//             isExpanded: true,
//             underline: SizedBox(),
//             value: widget.value,
//             items:widget.items,
//
//             onChanged: widget.onChanged));
//   }
// }
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';

class CreatDropDownButton extends StatefulWidget {
  final List<String> items;
  final String startItem, value;
  final TextStyle labelStyle;
  final double topMargin, height, width;
  final Color buttonBackground, listBackGround;

  final Function onChanged;
  const CreatDropDownButton({
    Key key,
    this.items,
    this.startItem,
    this.topMargin,
    this.height,
    this.width,
    this.labelStyle,
    this.buttonBackground,

    this.listBackGround,
    this.onChanged,
    this.value,
  }) : super(key: key);
  @override
  _CreatDropDownButtonState createState() => _CreatDropDownButtonState();
}

class _CreatDropDownButtonState extends State<CreatDropDownButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(kDefaultPadding),
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 4, // 5 top and bottom
        ),
        width: MediaQuery.of(context).size.width*0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: DropdownButton<String>(
          // onTap: () {},
            hint: Container(
                child: Text(
                  widget.startItem,
                  style: widget.labelStyle,
                )),
            // style: TextStyle(color: Colors.yellow),
            dropdownColor: Colors.white,
            icon: Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.blueAccent,
            ),
            iconSize: 35,
            isExpanded: true,
            underline: SizedBox(),
            value: widget.value,
            items: widget.items.map((item) {
              return DropdownMenuItem<String>(
                  value: item,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(item, style: widget.labelStyle),
                  ));
            }).toList(),
            onChanged: widget.onChanged));
  }
}
