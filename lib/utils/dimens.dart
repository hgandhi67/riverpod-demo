import 'package:flutter/material.dart';

class Dimens {
  static double screenHeight = 0.0, screenWidth = 0.0;

  static void setDimens(BuildContext context){
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }
}