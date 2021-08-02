import 'package:flutter/material.dart';

import './style_standards.dart';

class StandardIcon extends StatelessWidget {
  final Icon icon;

  StandardIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: StandardIconSize(context).smallIcon,
      height: StandardIconSize(context).smallIcon,
      child: icon,
    );
  }
}
