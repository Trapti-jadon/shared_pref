import 'dart:ui';

import 'package:flutter/material.dart';

class MyColor{
  static final Color bgColor = Color(0xff252525);
  static final Color shadeOrangeColor = Color(0xffFFAB91);
  static final Color shadeYellowColor = Color(0xffFFCC81);
  static final Color shadeGreenColor = Color(0xffE5EE9C);
  static final Color shadeBlueColor = Color(0xff81DEEA);
  static final Color shadePurpleColor = Color(0xffCF93D9);
  
}

TextStyle mHeadline34({
  mColor = Colors.black,
  mFontWt = FontWeight.w500,

}){
  return TextStyle(
    color:mColor,
  fontWeight:mFontWt,
  fontFamily: 'Quicksand',
  fontSize: 34
  );
}

TextStyle mHeadline25({
  mColor = Colors.black,
  mFontWt = FontWeight.w500,

}){
  return TextStyle(
    color:mColor,
  fontWeight:mFontWt,
  fontFamily: 'Quicksand',
  fontSize: 25
  );
}

TextStyle mHeadline24({
  mColor = Colors.black,
  mFontWt = FontWeight.w500,

}){
  return TextStyle(
    color:mColor,
  fontWeight:mFontWt,
  fontFamily: 'Quicksand',
  fontSize: 24
  );
}

TextStyle mHeadline16({
  mColor = Colors.black,
  mFontWt = FontWeight.w500,

}){
  return TextStyle(
    color:mColor,
  fontWeight:mFontWt,
  fontFamily: 'Quicksand',
  fontSize: 16  );
}
TextStyle mHeadline10({
  mColor = Colors.black,
  mFontWt = FontWeight.w500,

}){
  return TextStyle(
    color:mColor,
  fontWeight:mFontWt,
  fontFamily: 'Quicksand',
  fontSize: 10
  );
}