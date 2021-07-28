import 'package:flutter/material.dart';

import '../utils/standards/style_standards.dart';

class AddMargin extends StatelessWidget {
  final Widget child;

  AddMargin({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: StandardMargin.cardMargin,
      ),
      child: child,
    );
  }
}
