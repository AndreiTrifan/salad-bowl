import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/standard_image.dart';
import 'package:u_win/utils/standards/style_standards.dart';

class FailedRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StandardImage(
            url: 'assets/illustrations/warning.png',
            fit: BoxFit.scaleDown,
            width: MediaQuery.of(context).size.width / 2,
          ),
          SizedBox(height: 40),
          Text('Datele nu au putut fi incarcate!',
              style: StandardTextStyles.body.regular)
        ],
      ),
    );
  }
}
