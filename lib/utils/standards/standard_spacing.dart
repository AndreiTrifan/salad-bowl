import 'package:flutter/material.dart';

import '../standards/style_standards.dart';

class StandardHorizontalSpacing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: StandardSpacing.horizontalSpacing,
    );
  }
}

class StandardSmallVerticalSpacing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: StandardSpacing.smallVerticalSpacing,
    );
  }
}

class StandardSmallHorizontalSpacing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: StandardSpacing.smallHorizontalSpacing,
    );
  }
}

class StandardVerticalSpacing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: StandardSpacing.verticalSpacing,
    );
  }
}
