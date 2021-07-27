import 'package:flutter/material.dart';

Widget checkWidgetParameter(
    {required dynamic parameter, required Widget widget}) {
  if (parameter == null) return Container();

  if (parameter is String) {
    if (parameter.isEmpty) return Container();
  }
  return widget;
}
