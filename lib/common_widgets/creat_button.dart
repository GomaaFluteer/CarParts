import 'package:flutter/material.dart';

class CreatButton extends StatefulWidget {
  final double height, width, topMargin;
  final Function onTap, onHover;
  final String label, title;
  final Color color;

  final TextStyle labelStyle, titleStyle;

  CreatButton({
    Key key,
    this.height,
    this.width,
    this.onTap,
    this.label,
    this.color,
    this.topMargin,
    this.onHover,
    this.labelStyle,
    this.title,
    this.titleStyle,
  }) : super(key: key);

  @override
  _CreatButtonState createState() => _CreatButtonState();
}

class _CreatButtonState extends State<CreatButton> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: widget.onHover,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: widget.topMargin == null ? 5 : widget.topMargin),
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.color,
            // gradient: LinearGradient(
            //     colors:widget.color==Colors.black?
            //     <Color>[
            //       Colors.black,
            //       Colors.black,
            //       Colors.black,
            //     ]
            //         :
            //
            //     <Color>[
            //       Color(0xff764B0C),
            //       Color(0xffE7C475),
            //       Color(0xffBB8B3F),
            //       Color(0xffC9994C),
            //       Color(0xff9D6D22)
            //     ]
            //
            // ),

            //                  border: Border.all(

            //                      color: mainColor
            // , width: 1
            //  color: widget.color,

            borderRadius: BorderRadius.circular(10)),
        child: Text(
          widget.label,
          style: widget.labelStyle,
        ),
      ),
    );
  }
}
