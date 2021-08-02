import 'package:flutter/material.dart';

import './standard_arrows.dart';
import './standard_image.dart';
import './style_standards.dart';

class StandardListTile extends StatelessWidget {
  final dynamic leading;
  final String title;
  final dynamic trailing;
  final Function onTap;

  StandardListTile({
    required this.title,
    this.leading,
    this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double smallIconSize = StandardIconSize(context).smallIcon;

    return ListTile(
      leading: leading == null
          ? null
          : leading is IconData?
              ? Icon(
                  leading,
                  size: smallIconSize,
                )
              : StandardImage(
                  url: leading,
                  width: smallIconSize,
                  height: smallIconSize,
                ),
      title: Text(
        title,
        style: StandardTextStyles.callout.regular,
      ),
      trailing: trailing == null
          ? StandardRightArrow()
          : trailing is IconData?
              ? Icon(
                  trailing,
                  size: smallIconSize,
                )
              : Text(
                  trailing,
                  style: StandardTextStyles.callout.regular,
                ),
      onTap: () => onTap,
    );
  }
}
