import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenwidth;
  static double? screenhight;
  static double? defaultsize;
  static Orientation? orintation;

  void init(BuildContext context) {
    screenhight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    orintation = MediaQuery.of(context).orientation;
    defaultsize = orintation == Orientation.landscape
        ? screenhight! * .024
        : screenwidth! * .024;

    // print('this is the default size  $defaultsize');
  }
}
