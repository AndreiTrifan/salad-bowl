import 'package:flutter/material.dart';

import './style_standards.dart';

class StandardTextStylesModel {
  late TextStyle light;
  late TextStyle medium;
  late TextStyle mediumItalic;
  late TextStyle regular;
  late TextStyle semibold;
  late TextStyle semiboldItalic;
  late TextStyle bold;

  final TextStyle textStyle;

  StandardTextStylesModel({
    required this.textStyle,
  }) {
    light = textStyle.copyWith(
        fontWeight: FontWeight.w300, fontStyle: FontStyle.normal, color: StandardColors.standardBlack);
    medium = textStyle.copyWith(
        fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: StandardColors.standardBlack);
    mediumItalic = textStyle.copyWith(
        fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: StandardColors.standardBlack);
    regular = textStyle.copyWith(
        fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, color: StandardColors.standardBlack);
    semibold = textStyle.copyWith(
        fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: StandardColors.standardBlack);
    semiboldItalic = textStyle.copyWith(
        fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: StandardColors.standardBlack);
    bold = textStyle.copyWith(
        fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: StandardColors.standardBlack);
  }
}
