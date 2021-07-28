import 'package:flutter/material.dart';

import './style_standards.dart';

class StandardPadding extends StatelessWidget {
  final Widget child;
  final double top;
  final double bottom;
  final double left;
  final double right;

  StandardPadding({
    required this.child,
    this.top = StandardSpacing.verticalSpacing,
    this.bottom = StandardSpacing.verticalSpacing,
    this.left = StandardSpacing.horizontalSpacing,
    this.right = StandardSpacing.horizontalSpacing,
  });

  factory StandardPadding.all(Widget child, double value) {
    return StandardPadding(
      child: child,
      top: value,
      bottom: value,
      left: value,
      right: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      child: child,
    );
  }
}
