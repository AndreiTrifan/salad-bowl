import 'package:flutter/material.dart';

import '../standards/style_standards.dart';

class StandardIconButton extends StatelessWidget {
  StandardIconButton(this.onTap, this.icon, this.iconColor, this.iconSize,
      this.alignment, this.padding);

  final Function onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final AlignmentGeometry? alignment;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap as Function(),
      icon: Icon(
        icon,
        color: StandardColors.standardBlack,
        size: iconSize != null ? iconSize : StandardIconSize(context).smallIcon,
      ),
      constraints: BoxConstraints(),
      alignment: Alignment.center,
      splashColor: Colors.transparent,
      padding: EdgeInsets.zero,
    );
  }
}
