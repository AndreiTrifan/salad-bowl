import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/standard_spacing.dart';

import '../../utils/standards/standard_image.dart';
import '../../utils/standards/style_standards.dart';

class FailedRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StandardImage(
          url: 'assets/illustrations/warning.png',
          width: MediaQuery.of(context).size.width / 2,
        ),
        StandardVerticalSpacing(),
        Text('Datele nu au putut fi incarcate!',
            style: StandardTextStyles.body.regular)
      ],
    );
  }
}
