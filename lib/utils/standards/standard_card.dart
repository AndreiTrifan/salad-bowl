import 'package:flutter/material.dart';

import './standard_padding.dart';
import './style_standards.dart';

class StandardCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double padding;
  final ShapeBorder? shape;

  StandardCard({
    required this.child,
    this.color = StandardColors.standardWhite,
    this.padding = StandardSpacing.verticalSpacing,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: StandardPadding.all(child, padding),
      elevation: StandardElevation.cardElevation,
      margin: EdgeInsets.all(StandardMargin.cardMargin),
      color: color,
      shape: shape ?? StandardCornerRadius.roundedCorners,
    );
  }
}
