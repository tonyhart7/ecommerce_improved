import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

double getProportionalScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // layout used in proto
  return (inputHeight / 821) * screenHeight;
}

// double getProportionalScreenWidth(double inputWidth) {
//   double screenWidth = SizeConfig.screenWidth!;
//   // layout used in proto
//   return (inputWidth / 375) * screenWidth;
// }
