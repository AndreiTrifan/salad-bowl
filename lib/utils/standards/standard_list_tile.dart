import 'package:flutter/material.dart';

import './standard_arrows.dart';
import './standard_icon.dart';
import './standard_image.dart';
import './style_standards.dart';

class StandardListTile extends StatelessWidget {
  final dynamic leading;
  final String title;
  dynamic trailing;
  final Function onTap;

  StandardListTile({
    required this.title,
    this.leading,
    this.trailing,
    required this.onTap,
  });

  bool _validURL(String url) {
    if (Uri.parse(url).isAbsolute) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    double smallIconSize = StandardIconSize(context).smallIcon;

    _dynamicIs(dynamic element) {
      if (element == null) {
        return StandardRightArrow();
      } else if (element is String) {
        if (_validURL(element)) {
          return StandardImage(
            url: element,
            width: smallIconSize,
            height: smallIconSize,
          );
        } else {
          return Text(
            element,
            style: StandardTextStyles.callout.regular,
          );
        }
      } else if (element is Icon) {
        return StandardIcon(icon: element);
      }
    }

    return ListTile(
      leading: Align(
          alignment: Alignment(StandardSpacing.horizontalSpacing, 0),
          child: leading == null ? leading : _dynamicIs(leading)),
      title: Align(
        alignment: Alignment(StandardSpacing.horizontalSpacing, 0),
        child: Text(
          title,
          style: StandardTextStyles.callout.regular,
        ),
      ),
      trailing: Align(
        alignment: Alignment(0, 0),
        child: (() {
          _dynamicIs(trailing);
        }()),
      ),
      onTap: () => onTap,
    );
  }
}
