import 'package:flutter/material.dart';

import './standard_padding.dart';
import '../standards/style_standards.dart';

class StandardCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double padding;
  final ShapeBorder? shape;

  StandardCard({
    required this.child,
    this.color = StandardColors.standardWhite,
    this.padding = StandardSpacing.verticalSpacing,
  }) : this.shape = StandardCornerRadius.roundedCorners;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: StandardPadding.all(child, padding),
      elevation: StandardElevation.cardElevation.toDouble(),
      margin: EdgeInsets.all(StandardMargin.cardMargin.toDouble()),
      color: color,
      shape: shape,
    );
  }
}
