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
      this.onTap,
      this.name,
      this.leadingIcon,
      this.trailingIcon,
      this.iconColor,
      this.iconSize,
      this.buttonColor,
      this.image,
      this.textColor,
      this.disabledTextColor);

  @override
  Widget build(BuildContext context) {
    var _textStyle = StandardTextStyles.headline.semibold
        .copyWith(color: textColor ?? StandardColors.standardBlack);
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
                child: Icon(leadingIcon,
                    color: iconColor ?? StandardColors.standardWhite,
                    size: iconSize ?? StandardIconSize(context).smallIcon),
                top: 0,
                bottom: 0,
                left: 0,
              ),
            ),
            checkWidgetParameter(
              parameter: name,
              widget: StandardPadding(
                child: Text(name),
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
                  color: iconColor ?? StandardColors.standardWhite,
                  size: iconSize ?? StandardIconSize(context).smallIcon,
                ),
                top: 0,
                bottom: 0,
                left: 0,
              ),
            ),
            StandardImage(url: image)
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
