import 'package:flutter/material.dart';

import '../standards/style_standards.dart';

class StandardIconButton extends StatelessWidget {
  StandardIconButton(
      {required this.onTap,
      required this.icon,
      this.iconColor = StandardColors.standardBlack,
      this.iconSize,
      this.alignment = Alignment.center,
      this.padding = EdgeInsets.zero});

  final Function() onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final AlignmentGeometry alignment;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize ?? StandardIconSize(context).smallIcon,
      ),
      constraints: BoxConstraints(),
      alignment: alignment,
      splashColor: Colors.transparent,
      padding: padding,
    );
  }
}
