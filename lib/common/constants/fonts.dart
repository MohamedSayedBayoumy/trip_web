import 'package:flutter/material.dart';
import 'package:trip_web/common/constants/colors.dart';

import '../utils/app_utlis.dart';

abstract class AppFont {
  static TextStyle styleRegular12 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontSize: 12),
    color: AppColors.secondryWhiteColor,
  );

  static TextStyle styleRegular18 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontSize: 18),
    color: AppColors.secondryWhiteColor,
  );

  static TextStyle styleRegular25 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontSize: 25),
    color: Colors.white,
  );

  static TextStyle styleRegular14 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontSize: 14),
    color: Colors.white,
  );

  static TextStyle styleMeduim14 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveText(fontSize: 14),
    color: Colors.white,
  );

  static TextStyle styleMeduim9 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveText(fontSize: 9),
    color: AppColors.orangeColor,
  );

  static TextStyle styleMeduim32 = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontSize: 32),
    color: Colors.white,
  );

  static double getResponsiveText({required fontSize}) {
    final scaleFactor = getScaleFactor();
    double responsiveText = fontSize * scaleFactor;

    final lowerFontSize = fontSize * .8;
    final upperFontSize = fontSize * 1.2;
    return double.parse(
      (responsiveText.clamp(lowerFontSize, upperFontSize)).toString(),
    );
  }

  static double getScaleFactor() {
    final cureentWidth =
        MediaQuery.sizeOf(AppUtils.navigatorKey.currentContext!).width;
    if (cureentWidth < 600) {
      return cureentWidth / 400;
    } else if (cureentWidth > 600 && cureentWidth < 1280) {
      return cureentWidth / 700;
    } else {
      return cureentWidth / 1000;
    }
  }
}
