import 'package:flutter/material.dart';

import 'style_standards.dart';

class StandardMoreInfoArrow extends StatelessWidget {

  const StandardMoreInfoArrow({Key? key, required this.moreInfo})
      : super(key: key);

  final bool moreInfo;

  @override
  Widget build(BuildContext context) {
    return Icon(
      moreInfo ? Icons.arrow_downward : Icons.arrow_upward,
      size: StandardIconSize(context).moreInfoArrowSize,
    );
  }
}

class StandardRightArrow extends StatelessWidget {
  const StandardRightArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_arrow_right,
          size: StandardIconSize(context).rightArrowSize,
    );
  }
}