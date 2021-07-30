import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/standard_arrows.dart';
import 'package:u_win/utils/standards/standard_image.dart';
import 'package:u_win/utils/standards/style_standards.dart';

class StandardListTile extends StatelessWidget {
  final StandardImage? left;
  final String title;
  var right;
  final Function onTap;

  StandardListTile({
    required this.title,
    this.left,
    this.right,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).textScaleFactor);
    return Card(
      elevation: 1,
      child: ListTile(
        leading: Align(
            alignment: Alignment(StandardSpacing.horizontalSpacing, 0),
            child: left),
        title: Align(
          alignment: Alignment(StandardSpacing.horizontalSpacing, 0),
          child: Text(
            title,
            style: StandardTextStyles.callout.regular,
          ),
        ),
        trailing: Align(
          alignment: Alignment(StandardSpacing.horizontalSpacing, 0),
          child: (() {
            if (right == null) {
              return StandardRightArrow();
            } else if (right is String) {
              return Text(
                right,
                style: StandardTextStyles.callout.regular,
              );
            }

            return right;
          }()),
        ),
        onTap: () => onTap,
      ),
    );
  }
}
