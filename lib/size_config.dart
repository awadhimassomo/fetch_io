import 'package:flutter/material.dart';

class SizeConfig {
  static late  MediaQueryData _mediaQueryData;
  static late  double screenWidth;
  static late   double screenHeight;
  static late double  defaultSize;
  static late  Orientation  orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth= _mediaQueryData.size.width;
    orientation = _mediaQueryData .orientation;

  }

}

//et the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight){
  double screenHeight=SizeConfig.screenHeight;
  return(inputHeight/812.0)*screenHeight;
}

//get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth){
  double screenWidth=SizeConfig.screenWidth;
  return(inputWidth/375.0)*screenWidth;
}