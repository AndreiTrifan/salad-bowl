import 'package:flutter/material.dart';

import '../standards/standard_image.dart';
import '../error_check_utils.dart';
import '../standards/standard_padding.dart';
import '../size_measurement_utils.dart';
import '../standards/style_standards.dart';

class StandardButton extends StatelessWidget {
  final Function() onTap;
  final String name;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Color? iconColor;
  final double? iconSize;
  final Color? buttonColor;
  final String? image;
  final Color? textColor;
  final Color? disabledTextColor;

  StandardButton(
      {required this.onTap,
      required this.name,
      this.leadingIcon,
      this.trailingIcon,
      this.iconColor = StandardColors.standardWhite,
      this.iconSize,
      this.buttonColor,
      this.image,
      this.textColor = StandardColors.standardBlack,
      this.disabledTextColor});

  @override
  Widget build(BuildContext context) {
    var _textStyle = StandardTextStyles.headline.semibold;
    var _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: _calculateHeight(_textScaleFactor, name, _textStyle),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: StandardColors.standardBlack,
        ),
        child: Row(
          children: [
            checkWidgetParameter(
              parameter: leadingIcon,
              widget: StandardPadding(
                child: Icon(
                  leadingIcon,
                  size: iconSize ?? StandardIconSize(context).smallIcon,
                ),
                top: 0,
                bottom: 0,
                left: 0,
              ),
            ),
            checkWidgetParameter(
              parameter: name,
              widget: StandardPadding(
                child: Text(
                  name,
                  style: _textStyle,
                ),
                top: 0,
                bottom: 0,
                left: 0,
              ),
            ),
            checkWidgetParameter(
              parameter: trailingIcon,
              widget: StandardPadding(
                child: Icon(
                  trailingIcon,
                  size: iconSize ?? StandardIconSize(context).smallIcon,
                ),
                top: 0,
                bottom: 0,
                left: 0,
              ),
            ),
            StandardImage(
                url: image,
                width: iconSize == null
                    ? StandardIconSize(context).smallIcon
                    : iconSize! * _textScaleFactor)
          ],
        ),
      ),
    );
  }

  double _calculateHeight(
      double textScaleFactor, String text, TextStyle style) {
    return StandardSpacing.verticalSpacing * 2 +
        getTextHeight(text, style, textScaleFactor);
  }
}
