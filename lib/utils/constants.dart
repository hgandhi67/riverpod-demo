import 'dart:ui';

import 'package:demo_task/models/user_gym_location_model.dart';
import 'package:demo_task/utils/palettes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Constants {
  static final radius10 = BorderRadius.circular(10);
  static final radius100 = BorderRadius.circular(100);
  static const heightSmall = SizedBox(height: 8);
  static const widthSmall = SizedBox(width: 8);

  static final textFieldOutlineBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Palettes.colorGrey, width: 1),
    borderRadius: Constants.radius10,
  );

  static String parseDateOfBirth(String dob) {
    try {
      final format = DateFormat("yyyy-MM-dd");
      final parsingFormat = DateFormat("MM/dd/yyyy");
      final parsedDate = format.parse(dob);
      final f2 = parsingFormat.format(parsedDate);

      return "$f2";
    } catch (e, stacktrace) {}

    return dob;
  }

  static String parseAddress(GymLocationFull? gymLocationFull) {
    final gym = gymLocationFull;
    if (gym != null && gym.raw!.isNotEmpty) {
      return "${gym.raw}";
    }

    return "";
  }
}