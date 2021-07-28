import 'dart:io';

import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/standard_text_styles_model.dart';

class StandardTextStyles {
  static var largeTitle = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.largeTitleSize));
  static var title1 = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.title1Size));
  static var title2 = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.title2Size));
  static var title3 = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.title3Size));
  static var headline = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.headlineSize));
  static var body = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.bodySize));
  static var callout = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.calloutSize));
  static var subheadline = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.subheadlineSize));
  static var footnote = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.footnoteSize));
  static var caption1 = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.caption1Size));
  static var caption2 = StandardTextStylesModel(
      textStyle: TextStyle(fontSize: StandardFontSize.caption2Size));
}

class StandardFontSize {
  static var largeTitleSize = Platform.isIOS ? 34.0 : 48.0;
  static var title1Size = Platform.isIOS ? 28.0 : 34.0;
  static var title2Size = Platform.isIOS ? 22.0 : 24.0;
  static var title3Size = Platform.isIOS ? 20.0 : 20.0;
  static var headlineSize = Platform.isIOS ? 17.0 : 16.0;
  static var bodySize = Platform.isIOS ? 17.0 : 16.0;
  static var calloutSize = Platform.isIOS ? 16.0 : 14.0;
  static var subheadlineSize = Platform.isIOS ? 15.0 : 14.0;
  static var footnoteSize = Platform.isIOS ? 13.0 : 14.0;
  static var caption1Size = Platform.isIOS ? 12.0 : 12.0;
  static var caption2Size = Platform.isIOS ? 11.0 : 10.0;
}

class StandardColors {
  static const Color standardBlue = Color(0xFF004990);
  static const Color standardLightBlue = Color(0xFF0079C1);
  static const Color standardAliceBlue = Color(0xFFE6F2F9);
  static const Color standardYellow = Color(0xFFFDB813);
  static const Color standardRed = Color(0xFFED1C24);
  static const Color standardBlack = Color(0xFF010202);
  static const Color standardDarkGrey = Color(0xFF58595B);
  static const Color standardGrey = Color(0xFFAAAAAA);
  static const Color standardLightGrey = Color(0xFFD1D3D4);
  static const Color standardWhite = Color(0xFFFFFFFF);
  static const Color appBackground = Color(0xFFFFFFFF);
}

class StandardMargin {
  static const double pageMargin = 12;
  static const double cardMargin = 2;
}

class StandardIconSize {
  BuildContext context;
  late double rightArrowSize;
  late double moreInfoArrowSize;
  late double smallIcon;
  late double normalIcon;
  late double bigIcon;

  StandardIconSize(this.context) {
    var textScaleFactor = MediaQuery.of(context).textScaleFactor;
    rightArrowSize = 12 * textScaleFactor;
    moreInfoArrowSize = 24 * textScaleFactor;
    smallIcon = 25 * textScaleFactor;
    normalIcon = 35 * textScaleFactor;
    bigIcon = 50 * textScaleFactor;
  }
}

class StandardCornerRadius {
  static const double radius = 16;
  static const double smallRadius = 10;
  static ShapeBorder roundedCorners = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(StandardCornerRadius.radius),
    side: BorderSide(
      color: StandardColors.standardLightGrey,
      width: 0.5,
    ),
  );
}

class StandardSpacing {
  static const double verticalSpacing = 16;
  static const double smallVerticalSpacing = 4;
  static const double horizontalSpacing = 16;
  static const double smallHorizontalSpacing = 4;
}

class StandardElevation {
  static final double cardElevation = 1;
}
