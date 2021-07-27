import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/style_standards.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: StandardColors.standardBlack,
        )
      ],
    );
  }
}
