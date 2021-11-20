
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatTextField extends StatelessWidget {
  final String label, title;
  final  Function validate, onSave;
  final double topMargin, textMargin, width;
  final Color fillColor;
  final int maxLines;
  final TextStyle titleStyle, labelStyle, errorStyle;
  var controller;
  @override
  CreatTextField({
    Key key,
    this.controller,
    this.label,
    this.validate,
    this.onSave,
    this.title,
    this.topMargin,
    this.textMargin,
    this.fillColor,

    this.width,
    this.titleStyle,
    this.labelStyle,
    this.errorStyle,
    this.maxLines,
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: topMargin == null ? 5 : topMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title == null ? Container() : Text(title, style: titleStyle),
          Container(
            padding: const EdgeInsets.all(1.0),
            margin: EdgeInsets.symmetric(
              vertical: textMargin == null ? 5 : 0,
            ),
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: <Color>[
            //       Color(0xff875226),
            //       Color(0xffF7D27C),
            //       Color(0xffE7A458),
            //       Color(0xffE6A357),
            //       Color(0xffFEFAAC)
            //     ],
            //   ),
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(10.0),
            //   ),
            // ),
            child: Container(
              height:  48.85 ,
              width: width == null ? 265 : width,
              child: TextFormField(
              controller: controller,
                textDirection: TextDirection.rtl,
                textAlign:
                     TextAlign.start,


                onSaved: (val){
                  onSave();
                },
                validator: (val){
                  validate();
                },
                // obscureText: obSecureText,
                // keyboardType: keyboardType
                // controller: controller,

                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  filled: true,
                //  fillColor: fillColor == null ? secColor : fillColor,
                  hintText: (label),
                  hintStyle: labelStyle,
                  errorStyle: errorStyle,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(

                         color: Colors.blue,

                          width: 1.0

                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,

                          width: 1.0

                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
