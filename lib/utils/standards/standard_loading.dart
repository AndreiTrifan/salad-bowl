import 'package:flutter/material.dart';

import '../standards/style_standards.dart';

class StandardLoading extends StatelessWidget {
  const StandardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: StandardColors.standardBlack,
    ));
  }
}
