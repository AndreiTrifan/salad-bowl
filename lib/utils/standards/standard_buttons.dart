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
  final Color buttonColor;
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
      this.buttonColor = StandardColors.standardBlack,
      this.image,
      this.textColor = StandardColors.standardBlack,
      this.disabledTextColor});

  @override
  Widget build(BuildContext context) {
    var _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    var _textStyle = onTap != null
        ? StandardTextStyles.headline.semibold.copyWith(color: textColor)
        : StandardTextStyles.headline.semibold;
    return Container(
      height: _calculateHeight(_textScaleFactor, name, _textStyle),
      child: ElevatedButton(
        onPressed: onTap,
        child: Row(
          children: [
            checkWidgetParameter(
              parameter: leadingIcon,
              widget: StandardPadding(
                child: Icon(
                  leadingIcon,
                  size: _iconSize(iconSize, _textScaleFactor, context),
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
                  size: _iconSize(iconSize, _textScaleFactor, context),
                ),
                top: 0,
                bottom: 0,
                left: 0,
              ),
            ),
            StandardImage(
                url: image,
                width: _iconSize(iconSize, _textScaleFactor, context))
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
    var _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor,
        size: _iconSize(iconSize, _textScaleFactor, context),
      ),
      constraints: BoxConstraints(),
      alignment: alignment,
      splashColor: Colors.transparent,
      padding: padding,
    );
  }
}

double _iconSize(
    double? iconSize, double textScaleFactor, BuildContext context) {
  if (iconSize != null) return iconSize * textScaleFactor;

  return StandardIconSize(context).smallIcon;
}
