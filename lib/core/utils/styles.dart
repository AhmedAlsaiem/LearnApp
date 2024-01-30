import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class TextStyleManger {
  static TextStyle textStyleAleoRegular24 = TextStyle(
      color: ColorsManger.kScendryColor.withOpacity(0.7),
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: FontManger.AleoRegularFont);
  static TextStyle textStyleAleoRegular16 = TextStyle(
    color: ColorsManger.kScendryColor.withOpacity(0.6),
    fontWeight: FontWeight.w600,
    fontFamily: FontManger.AleoRegularFont,
    fontSize: 16,
  );
}
