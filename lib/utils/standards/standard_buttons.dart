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
  final Color iconColor;
  final double? iconSize;
  final Color? buttonColor;
  final String? image;
  final Color textColor;
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
    return Container(
      height: _calculateHeight(textScaleFactor(context), name, _textStyle),
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
                    : iconSize! * textScaleFactor(context))
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

double textScaleFactor(BuildContext context) {
  return MediaQuery.of(context).textScaleFactor;
}

class StandardIconButton extends StatelessWidget {
  StandardIconButton(
      {required this.onTap,
      required this.icon,
      this.iconColor = StandardColors.standardBlack,
      this.iconSize,
      this.alignment = Alignment.center,
      this.padding = EdgeInsets.zero});

  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  final double? iconSize;
  final AlignmentGeometry alignment;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize ??
            StandardIconSize(context).smallIcon * textScaleFactor(context),
      ),
      constraints: BoxConstraints(),
      alignment: alignment,
      splashColor: Colors.transparent,
      padding: padding,
    );
  }
}
