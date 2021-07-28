import 'package:flutter/material.dart';

import '../utils/standards/style_standards.dart';

class AddMargin extends StatelessWidget {
  final Widget child;
  final double margin;

  AddMargin({
    required this.child,
    this.margin = StandardMargin.cardMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: margin,
        right: margin,
      ),
      child: child,
    );
  }
}
