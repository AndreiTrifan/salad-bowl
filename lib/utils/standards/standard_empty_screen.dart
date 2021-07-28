import 'package:flutter/material.dart';

import '/utils/constants.dart';
import '/utils/standards/standard_image.dart';
import 'style_standards.dart';
import 'standard_spacing.dart';

class StandardEmptyScreen extends StatelessWidget {
  const StandardEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _textStyle = StandardTextStyles.headline.regular;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StandardImage(
          url: 'assets/illustrations/emptyData.png',
          width: width,
          imageOrientation: ImageOrientation.PORTRAIT,
        ),
        StandardVerticalSpacing(), //Spacing so it looks nice
        Text(
          'Nu există conținut',
          style: _textStyle,
        ),
      ],
    );
  }
}
