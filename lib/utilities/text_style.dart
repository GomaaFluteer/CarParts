
import 'package:auto_parts/local_data/local_data.dart';
import 'package:flutter/material.dart';

class WhiteTitle {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
          color: Colors.white,

        );
  }
}

class WhiteBoldTitle {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 18,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
      color: Colors.white,

    );
  }
}


class BlackTitle {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 14,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
      color: Colors.black,

    );
  }
}
class BlueTitle {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 14,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,

      color: Colors.blue,

    );
  }
}


class WhiteLabel {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 12,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      color: Colors.white,

    );
  }
}


class GoldLabel {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 20,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
      color: mainColor,

    );
  }
}




class Regular {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 16,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      //height: 1.2,
      color: Colors.white,

    );
  }
}






class BlackLabel {
  static TextStyle display5(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
      fontSize: 12,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,

      color: Colors.black,

    );
  }
}
class BoldRegularWhite {
  static TextStyle display5(BuildContext context) {
    return Theme
        .of(context)
        .textTheme
        .headline1
        .copyWith(
      fontSize: 18,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,

      color: Colors.white,

    );
  }
}


class BoldRegularBlue {
  static TextStyle display5(BuildContext context) {
    return Theme
        .of(context)
        .textTheme
        .headline1
        .copyWith(
      fontSize: 18,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,

      color: Colors.blue,

    );
  }
}


class RegularBlue {
  static TextStyle display5(BuildContext context) {
    return Theme
        .of(context)
        .textTheme
        .headline1
        .copyWith(
      fontSize: 16,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,

      color: Colors.blue,

    );
  }




}




class RegularDarkBlue {
  static TextStyle display5(BuildContext context) {
    return Theme
        .of(context)
        .textTheme
        .headline1
        .copyWith(
      fontSize: 16,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,

      color: Color(0xff071333),

    );
  }




}









const kBackgroundColor = Color(0xFFF1EFF1);
const kPrimaryColor = Color(0xFF035AA6);
const kSecondaryColor = Color(0xFFFFA41B);
const kTextColor = Color(0xFF000839);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);
const kDefaultPadding = 20.0;

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);