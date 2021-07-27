import 'package:flutter/material.dart';

Widget checkWidgetParameter({dynamic parameter, required Widget widget}) {
  if (parameter == null || (parameter is String && parameter.isEmpty))
    return Container();
  return widget;
}
